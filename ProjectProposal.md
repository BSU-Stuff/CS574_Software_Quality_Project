
Overview of the code:
______________________

The Java 2D Game Libary is framework created by Paul Campbell with the help of Michael Salerno, Mathieu Tanguay and
Annuate (real name not given). The purpose of this library is to help out those who are looking to get into the creation
of 2D games in java. The multititude of class functions allows users to gain access into realistic animation effects, help 
deal with texture and buffer loading images, as well as help a user create gui components amoung other things. 


Stats of code:
______________________

 Total source lines of code: 8662
 Total Number of classes: 42
 Total Number of enum: 5
 Total Number of interfaces: 2


Program properties to conform to:
__________________________________

1 sequential.

Test the validility of creating a new game. When creating a new game ensure that it goes in the order of 
a call from game -> Preformance Timing -> Game Time (start in Game.java line 51).

This can be done with a javaMOP along the lines of this regular expression: (Game PreformanceTiming GameTime)*

2 sequential.

3 sequential.

4 sequential.

5 sequential.

6. ensure that Game Time Tick is able to know correctly if the time has stopped and if the tick is correct. (GameTime.java line: 121). The tick is used to know how much time has passed between frames. This helps accuratly keep track of frames per second. 

given function:
-----------------------------------
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
--------------------------------------------------------
a java assertion can be used to double check that stopped is still stopped once the end of tick() has been reached
//assert stopped =true after the final if statement.

a java assertion can also be used to double check that the tick time is correct between frames. 
//assert prevTime != null && prevTime >= 0 

7. ensure that the GameTime delta is accuratly keeping track of time passing since the last pull to the clock. (GameTime line: 60). delta time is being updated in tick.

//assert currTime > prevTime
//assert deltaTime != null && deltaTime >=0

8. ExitGame in Game is currently taking in three exit statuses 0, -1, or defualt in a switch statement. It doesnt appear that anything in this software is syncronized (Game.java line:169).

--------------------------------------------------------
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
--------------------------------------------------------
The system.exit(errorCode) line could cause odd issues to occur. a javaMOP could be used to ensure that the exitGame
method is not called multiple times in a row.

ere: Game (exitGame) 


9.

10.

11.

12.

13.

14.

15.

16.

17.

18.

19.

20.
