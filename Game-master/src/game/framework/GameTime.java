package game.framework;

public class GameTime
{
    private /*@ spec_public @*/ double deltaTime;
    private /*@ spec_public @*/ long baseTime;
    private /*@ spec_public @*/ long pausedTime;
    private /*@ spec_public @*/ long stopTime;
    private /*@ spec_public @*/ long prevTime;
    private /*@ spec_public @*/ long currTime;
    private /*@ spec_public @*/ long lCurrTime;
    private /*@ spec_public @*/ boolean stopped;

    /**
     * Complete Constructor.
     * Initializes all fields to zero.
     */
    public GameTime()
    {
        // Initalize Vars
        this.deltaTime = 0.0f;
        this.baseTime = 0;
        this.pausedTime = 0;
        this.stopTime = 0;
        this.prevTime = 0;
        this.currTime = 0;
        this.lCurrTime = 0;
        this.stopped = false;
    }

    /**
     * Gets the total time elapsed in the program.
     * @return Returns the total time passed since the program has started.
     */
    public float getGameTime()
    {
        if(stopped)
        {
            return (float)(this.stopTime - this.baseTime);
        }
        else
        {
            return (float)((this.currTime - this.pausedTime) - this.baseTime);
        }
    }

    /**
     * Gets the time passed since the last time the clock has been polled.
     * @return Returns the time in milliseconds since the last update.
     */
    public float getDeltaTime()
    {
        return (float)this.deltaTime;
    }
    
    /**
     * Gets the time passed since the last time the clock has been polled.
     * @return Returns the time in seconds since the last update.
     */
    public float getDeltaTimeSeconds()
    {
        return (float)this.deltaTime / 1000.0f;
    }

    /**
     * Resets the GameTime timer.
     * Resets: 
     *  baseTime = System.currentTimeMillis(); 
     *  prevTime = System.currentTimeMillis();
     *  stopTime = 0; 
     *  stopped  = false; 
     */
    public void reset()
    {
        lCurrTime = System.currentTimeMillis();
        this.baseTime = lCurrTime;
        this.prevTime = lCurrTime;
        this.stopTime = 0;
        this.stopped = false;
    }

    /**
     * Starts the timer.
     */
    public void start()
    {
        long startTime = System.currentTimeMillis();

        if(stopped)
        {
            // Then accumulate stopped time
            this.pausedTime += (startTime - this.stopTime);

            // Since the timer is starting back up reset it
            this.prevTime = startTime;

            // No longer stopped
            this.stopTime = 0;
            stopped = false;
        }
    }

    /**
     * Stops the timer.
     */
    public void stop()
    {
        if(!stopped)
        {
            lCurrTime = System.currentTimeMillis();
            this.stopTime = lCurrTime;
            this.stopped = true;
        }
    }

    /**
     * Calculates the change in time between this update and the last
     * update and adds the difference to the total game time
     * game time = total time app has been running since it started.
     */
    //@ensure this.currTime > /old this.currtime;
    //@ensure this.deltaTime > 0 ;
    //@requires this.prevTime > 0;
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
}
