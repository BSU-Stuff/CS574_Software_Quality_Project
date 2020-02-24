
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

This can be done with a javaMOP along the lines of this regular expression: (Game PreformanceTiming GameTime)*
_________________________________
2 sequential.

When a game is created we need to have access to the users mouse and keyboard (or one or the other depending on the game) if for some reason the mouse/keyboard are never taken into account and the game continues to intialize we could end up with a really lame game. Ensure that the mouse keybaord listeners are initalized and working before moving on to other parts of launching the game. (Game.java line:310, KeyBoard.java line: 14,Mouse.java line:15, MouseInput.java line:34 , KeyBoardInput.java line:29) ```

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
  
  ```ere: (Game.Initalized KeyBoard KeyBoardInput Mouse MouseInput)*```
 
 view test #10 for more on KeyBoard 
_________________________________
3 sequential.
_________________________________
4 sequential.
_________________________________
5 sequential.
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
11.
_________________________________
12.
_________________________________
13.
_________________________________
14.
_________________________________
15.
_________________________________
16.
_________________________________
17.
_________________________________
18.
_________________________________
19.
_________________________________
20.
