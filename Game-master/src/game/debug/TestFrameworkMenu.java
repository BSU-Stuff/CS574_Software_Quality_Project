package game.debug;

import game.framework.Game;
import game.framework.GameTime;
import game.gui.Anchor;
import game.gui.Menu;
import game.gui.MenuBar;
import game.gui.MenuItem;
import game.input.Keyboard;
import game.input.Mouse;
import java.awt.Graphics2D;
import java.awt.event.KeyEvent;
import java.awt.Color;
import java.awt.Font;


public class TestFrameworkMenu extends Game
{
	private static MenuBar menuBar;
    /**
     * Any objects/variables that need to be Initialized should do so
     * in Initialize().
     */
    @Override
    public void initialize()
    {
        // Initalize stuff in Base
        super.initialize();
        menuBar.initialize();
        // TODO:
    }

    /**
     * Any Content that needs to be loaded should do so
     * in loadContent().
     */
    @Override
    public void loadContent()
    {
        // All Resources should be placed in the resource folder
        // A "/resource/" is appened to the path.
        // To load an image; Texture2D texture = new Texture2D("path");
        // This file should load on all OS inside the jar :)
        // TODO:
    }

    /**
     * Any Content that needs to be unloaded should do so
     * in unloadContent().
     * Note: I wouldn't worry about this; Its not implemented properly as of now..
     */
    @Override
    public void unloadContent()
    {
        // TODO:
    }

    /**
     * Objects/Variables/Logic/Input that need to be updated should be placed
     * in this method.
     * @param gameTime
     */
    @Override
    public void update(GameTime gameTime)
    {
        // Call base class
        super.update(gameTime);
        //@assert this.fps.getFps() > 30 ;
        this.fps.update(gameTime);
        menuBar.update(gameTime);
        
        //<editor-fold defaultstate="collapsed" desc="System & Menu Keys">
        if(Keyboard.keyDownOnce(KeyEvent.VK_ESCAPE))
        {
            Game.exitGame();
        }
        //</editor-fold>
    }

    /**
     * This method draws images to the screen buffer
     * @param g2d
     */
    @Override
    public void draw(Graphics2D g2d)
    {
        // Call Base Class to clear Screen
        super.draw(g2d);
        // TODO:
        this.fps.draw(g2d);
        menuBar.draw(g2d);
        g2d.drawString("Mouse: (" + Mouse.getPosition().x + "," + Mouse.getPosition().y + ")", 10, 60);
    }
    
    /**
     * Main Entrance into TestFramework
     * @param args 
     */
    public static void main(String[] args)
    {
        TestFrameworkMenu test = new TestFrameworkMenu();
        test.setTitle("Java Game Framework - Alpha");
        test.setDimensions(800, 600);
        // Setup a menu
        menuBar = new MenuBar(Anchor.BOTTOM, new Font("Times New Roman", Font.PLAIN, 16), Color.GRAY, Color.BLACK);
        Menu fileMenu = new Menu("File",Color.CYAN);
        MenuItem newMI = new MenuItem("New",Color.CYAN);
        MenuItem openMI = new MenuItem("Open",Color.CYAN);
        fileMenu.add(newMI);
        fileMenu.add(openMI);
        Menu editMenu = new Menu("Edit",Color.CYAN);
        MenuItem copyMI = new MenuItem("Copy",Color.CYAN);
        MenuItem pasteMI = new MenuItem("Paste",Color.CYAN);
        editMenu.add(copyMI);
        editMenu.add(pasteMI);
        Menu helpMenu = new Menu("Help",Color.CYAN);
        MenuItem aboutMI = new MenuItem("About",Color.CYAN);
        helpMenu.add(aboutMI);
        menuBar.add(fileMenu);
        menuBar.add(editMenu);
        menuBar.add(helpMenu);
        test.run();
    }
}
