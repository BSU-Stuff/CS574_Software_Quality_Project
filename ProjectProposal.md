
Overview of the code:
-----------------------------------

The Java 2D Game Libary is framework created by Paul Campbell with the help of Michael Salerno, Mathieu Tanguay and
Annuate (real name not given). The purpose of this library is to help out those who are looking to get into the creation
of 2D games in java. The multititude of class functions allows users to gain access into realistic animation effects, help 
deal with texture and buffer loading images, as well as help a user create gui components amoung other things. 


Stats of code:
-----------------------------------

 Total source lines of code: 8662
 Total Number of classes: 42
 Total Number of enum: 5
 Total Number of interfaces: 2


Program properties to conform to:
-----------------------------------

1 sequential.

Test the validility of creating a new game. When creating a new game ensure that it goes in the order of 
a call from game -> Preformance Timing -> Game Time (start in Game.java line 51).

This can be done with a javaMOP along the lines ```ere:  (Game PreformanceTiming GameTime)*```
_________________________________
2 sequential.

When a game is created we need to have access to the users mouse and keyboard (or one or the other depending on the game) if for some reason the mouse/keyboard are never taken into account and the game continues to intialize we could end up with a really lame game. Ensure that the mouse keybaord listeners are initalized and working before moving on to other parts of launching the game. (Game.java line:310, KeyBoard.java line: 14,Mouse.java line:15, MouseInput.java line:34 , KeyBoardInput.java line:29) 
```
 public void initialize()
    {
        running = true;
        // Default is Cornflower blue
        background = (background == null) ? background = new Color(100, 149, 237) : background;
        // Add Keyboard
        this.addKeyListener(Keyboard.keyboard);
        this.canvas.addKeyListener(Keyboard.keyboard);
        // Add Mouse
        this.canvas.addMouseListener(Mouse.mouse);
        this.canvas.addMouseMotionListener(Mouse.mouse);
        // Create GameTime object
        gameTime = new GameTime();
        // Create the Graphics2D context to be used for font metrics.
        FontHelper.initialize();
    }
```
  From here we need to be sure that the initialization of the keyboard/mouse is actually accuring. Using a javaMOP to ensure sequence of events could work.
  
```ere: (Game.Initalized KeyBoard KeyBoardInput Mouse MouseInput)*
```
 view test #10 for more on KeyBoard 
_________________________________
3 sequential.
In order to properly use the project, we need to call the super initalize, update and draw methods. Once this has been validated. We can use the project.

Should be a javaMOP specification that requires "ere : (super.initalize super.update super.draw)"
_________________________________
4 sequential.
Game.java: createWindow
	Before creating a window, we need to set the settings first. Need to specify the sequence of set method required for this function to work.

JavaMOP specifying the sequence required before this function may be called.
_________________________________
5 sequential.
A MenuBar has to be created first, before Menus can be added. Test the sequence that MenuBar is created before Menus are added with JavaMOP.
Should be: create MenuBar, add Menus, add Menuitems (can't find the calls currently)
_________________________________
6. ensure that Game Time Tick is able to know correctly if the time has stopped and if the tick is correct. (GameTime.java line: 121). The tick is used to know how much time has passed between frames. This helps accuratly keep track of frames per second. 


```
public void tick()
    {
        if(stopped)
        {
            this.deltaTime = 0;
            return;
        }
        lCurrTime = System.currentTimeMillis();
        this.currTime = lCurrTime;

        // Time difference between this frame and the previous.
        this.deltaTime = (this.currTime - this.prevTime);

        // Prepare for next frame.
        this.prevTime = this.currTime;

        // Set to zero incase of inaccuracy
        if(this.deltaTime < 0.0f)
        {
            this.deltaTime = 0.0f;
        }
    }
```

a java assertion can be used to double check that stopped is still stopped once the end of tick() has been reached
 ```assert stopped =true after the final if statement ```

a java assertion can also be used to double check that the tick time is correct between frames. 
 ```assert prevTime != null && prevTime >= 0  ```
_________________________________
7. ensure that the GameTime delta is accuratly keeping track of time passing since the last pull to the clock. (GameTime line: 60). delta time is being updated in tick.

 ```assert currTime > prevTime && deltaTime != null && deltaTime >=0 ```
_________________________________
8. ExitGame in Game is currently taking in three exit statuses 0, -1, or defualt in a switch statement. It doesnt appear that anything in this software is syncronized (Game.java line:169).

```
    public static void exitGame(int errorCode)
    {
        switch(errorCode)
        {
            case 0:
                System.out.println("Game exited successfully.");
                break;
            case -1:
                System.out.println("Game exited unexpectedly.");
                break;
            default:
                System.out.println("Unknown exit status...");
                System.out.println("Quitting..");
                break;  
        }
        System.out.println("Exit Code: " + errorCode);
        System.exit(errorCode);
    }
    
    ...
    
        public static void exitGame()
    {
        Game.exitGame(0); // 0 is proper exit code
    }
 ```

The system.exit(errorCode) line could cause odd issues to occur. a javaMOP could be used to ensure that the exitGame
method is not called multiple times in a row.

 ```ere: Game (exitGame)  ```
_________________________________
9. There is nothing to check to see if a game is already initialized. if a game is already initialized should it be allowed to create a new game? or should it ignore the command for a new initialization(Game.java line: 310).

a simple assertion chould be made here to ensure that running does not already equal true when the game is being initalized 

 ```assert running != true ```

_________________________________
10. Depending on the frame rate it seems like we could be loosing key presses in the KeyboardInput.java if the key is down during the delta time of a frame is it possible that we miss a key? (Keyboardinput.java line:42)

```    
public synchronized void poll()
    {
        for(int i = 0; i < KEY_COUNT; ++i)
        {
            // Set the key state
            if(currentKeys[i])
            {
                // If the key is down now, but was not
                // down last frame, set it to ONCE,
                // otherwise, set it to PRESSED
                if(keys[i] == KeyState.RELEASED)
                    keys[i] = KeyState.ONCE;
                else
                    keys[i] = KeyState.PRESSED;
            }
            else
            {
                keys[i] = KeyState.RELEASED;
            }
        }
    }
```
    

I am not sure if there is a way to test this if it is missing data. Could an assertion be used in GameTime to do a pull on the current keyboard during a tick?

_________________________________
11. From test 10's code snipit you can see that there is logic using enum information. A openJML post condition here should be used to be sure that the pressed key is actually pressed and not actually just a second too long hold. (modification to this openJML will likely be needed)

```
/*@ key[i].KeyState == \old key[i].KeyState @*/ 
```
_________________________________
12. If frames per second of our game get bellow a certain point then our game starts to become unusable. For example if the FPS becomes ridiculous (say 1) we will miss keyboard and mouse interupts. (TestFrameworks.java line:55) bellow is taken from a 
sample class where the user updates the game based on the fps. 

    public void update(GameTime gameTime)
    {
        // Call base class
        super.update(gameTime);
        // TODO:
        this.fps.update(gameTime);
        
        
        //<editor-fold defaultstate="collapsed" desc="System & Menu Keys">
        if(Keyboard.keyDownOnce(KeyEvent.VK_ESCAPE))
        {
            Game.exitGame();
        }
        //</editor-fold>
    }
    
 an assertion here making sure that the game is operating at at least 30 fps would be ideal to make sure that our game is 
 operating well.
 
 ```assert fps > 30 ``` 
 
 This same issue occurs at Game.java line:136, if a the tick() funciton takes too long to return we could miss keybaord/mouse
 interupts.
 

________________________________
13. Along the lines of test case number 9, we should assume that only one game can be opened on a persons computer at once. If gameTime is already initialized with another game then it should not be reset for the new game being created. 


```    public void initialize()
    {
        running = true;
        // Default is Cornflower blue
        background = (background == null) ? background = new Color(100, 149, 237) : background;
        // Add Keyboard
        this.addKeyListener(Keyboard.keyboard);
        this.canvas.addKeyListener(Keyboard.keyboard);
        // Add Mouse
        this.canvas.addMouseListener(Mouse.mouse);
        this.canvas.addMouseMotionListener(Mouse.mouse);
        // Create GameTime object
        gameTime = new GameTime();
        // Create the Graphics2D context to be used for font metrics.
        FontHelper.initialize();
    }
 ```
 
 Using java assertion we can be sure that gameTime is currently null before it is assigned to a new GameTime.
 
_________________________________
14.
The FPS counter and MSPF are printed to the window to show statistics on the framerate. We need to make sure that it isn't printed outside the viewable window.

...
    public void draw(Graphics2D g2d)
    {
        g2d.setFont(font);
        // Sets the Color to draw
        g2d.setColor(textColor);
        // Draw the statistics on the screen
        g2d.drawString("FPS: " + fps, (int)position.x, (int)position.y);
        g2d.drawString("MSPF: " + mspf, (int)position.x, (int)position.y + 20);
    }
...

We can use JML here.
_________________________________
15.
game.framework: Vector2.java, Vector3.java, Vector4.java
There are Vector2, Vector3, and Vector4 classes. They specify incomplete but we can test their current functionality. Make sure they are doing what the author specified for them to do. Make sure object variables get set, the value returned is the value in the object, etc.
_________________________________
16.
game.framework: GameHelper.java
Make sure that the GameHelper class does it's job. Specifically, osIndependentFilePath(String path) returns a valid file regardless of OS (macOS, Windows, Linux). Listed as a "hack". Would be nice to test it.
_________________________________
17.
game.framework: Many classes here to test for functionality. Matrix, Matrix3, MathHelper, Quaternion, Rectangle. We can test these classes to make sure they are performing the correct calculations.
_________________________________
18.
game.gui: Menu.java
We can test this function to make sure that the functions are doing what they are supposed to. Using JML, we can veirfy that add(..) for example makes the linked list of items in the menu increase.
_________________________________
19.
game.gui: MenuItem.java
We can verify that the actions of a mouse moving or clicking on a menu item has the desired effect.
_________________________________
20.
game.gui: MenuBar.java
Make sure menus display properly with no font clipping.
...
    public void draw(Graphics2D g2d) 
    {
        // Set the paneColor of the MenuBar
        g2d.setColor(paneColor);
        // Fill The Menu Bar
        g2d.fillRect(bounds.x, bounds.y, bounds.width, bounds.height);
        // Set The Color of the Border
        g2d.setColor(borderColor);
        // Draw The Border
        switch(anchor)
        {
            case BOTTOM:
                g2d.drawLine(bounds.x, bounds.y, bounds.width, bounds.y);
                break;
            case TOP:
            default:
                g2d.drawLine(bounds.x, bounds.height, bounds.width, bounds.height);
                break;
        }
        // Draw The Menu's on this Menu Bar
        for(Menu menu : menus)
            menu.draw(g2d);
    }
...
Are the x, y, width and height the correct size or fit in the screen?
