package game.gui;

import game.framework.GameTime;
import game.framework.Rectangle;
import game.input.Mouse;
import game.input.MouseKeys;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.util.LinkedList;

public class Menu implements GuiComponent 
{
    // Class Properties
    public final /*@ spec_public @*/ String LABEL;
    private /*@ spec_public @*/ MenuState menuState;
    private /*@ spec_public @*/ LinkedList<MenuItem> items;
    // Values that need to be set by parent
    private /*@ spec_public @*/ Anchor anchor;
    private /*@ spec_public @*/ Font font;
    private /*@ spec_public @*/ Color paneColor, borderColor, fontColor;
    private /*@ spec_public @*/ Rectangle closedBoundingBox, openBoundingBox;
    
    /*@
      @ requires label != null;
      @ requires fontColor.getRed() >= 0 && fontColor.getRed() <= 255;
      @ requires fontColor.getBlue() >= 0 && fontColor.getBlue() <= 255;
      @ requires fontColor.getGreen() >= 0 && fontColor.getGreen() <= 255;
      @ ensures this.fontColor.getRed() >= 0 && this.fontColor.getRed() <= 255;
      @ ensures this.fontColor.getBlue() >= 0 && this.fontColor.getBlue() <= 255;
      @ ensures this.fontColor.getGreen() >= 0 && this.fontColor.getGreen() <= 255;
      @ ensures this.items.size() == 0;
      @ ensures this.fontColor == fontColor;
      @*/
    /**
     * Complete Constructor.
     * Creates a Menu.
     * @param label String containing the LABEL of the Menu.
     * @param fontColor Font color of all Menu labels.
     */
    public Menu(String label, Color fontColor)
    {
        this.LABEL = label;
        this.fontColor = fontColor;
        this.menuState = MenuState.CLOSED;
        this.items = new LinkedList<>();
    }
    
    /*@
      @ requires label != null;
      @ ensures this.LABEL == label;
      @ ensures this.fontColor == Color.WHITE;
      @ ensures this.items.size() == 0;
      @*/
    /**
     * Creates a Menu.
     * @param label String containing the LABEL of the Menu.
     */
    public Menu(String label)
    {
        this(label, Color.WHITE);
    }
    
    /*@
      @ requires menuItem != null;
      @ ensures this.items.size() == \old(this.items.size() + 1);
      @ ensures this.items.getLast() == menuItem;
      @*/
    /**
     * Adds a menu item to be displayed when the menu is activated.
     * @param menuItem A MenuItem to be added to this Menu.
     */
    public void add(MenuItem menuItem)
    {
        items.add(menuItem);
    }
    
    /*@
      @ requires paneColor != null && borderColor != null;
      @ requires paneColor.getRed() >= 0 &&  paneColor.getRed() <= 255; 
      @ requires paneColor.getBlue() >= 0 &&  paneColor.getBlue() <= 255; 
      @ requires paneColor.getGreen() >= 0 &&  paneColor.getGreen() <= 255; 
      @ requires borderColor.getRed() >= 0 &&  borderColor.getRed() <= 255; 
      @ requires borderColor.getBlue() >= 0 &&  borderColor.getBlue() <= 255; 
      @ requires borderColor.getGreen() >= 0 &&  borderColor.getGreen() <= 255; 
      @ ensures this.paneColor.getRed() >= 0 &&  this.paneColor.getRed() <= 255; 
      @ ensures this.paneColor.getBlue() >= 0 &&  this.paneColor.getBlue() <= 255; 
      @ ensures this.paneColor.getGreen() >= 0 &&  this.paneColor.getGreen() <= 255; 
      @ ensures this.borderColor.getRed() >= 0 &&  this.borderColor.getRed() <= 255; 
      @ ensures this.borderColor.getBlue() >= 0 &&  this.borderColor.getBlue() <= 255; 
      @ ensures this.borderColor.getGreen() >= 0 &&  this.borderColor.getGreen() <= 255;
      @ ensures this.paneColor == paneColor && this.borderColor == borderColor; 
      @*/
    /**
     * Sets The Color and Border Color of the menu.
     * This is set by the parent object MenuBar.
     * @param paneColor Color of the Menu pane.
     * @param borderColor Color of the Border surrounding the menu pane.
     */
    protected void setColors(Color paneColor, Color borderColor)
    {
        this.paneColor = paneColor;
        this.borderColor = borderColor;
    }
    
    /*@
      @ requires anchor != null;
      @ requires x >= 0 && y >= 0 && closedWidth >=0 && closedHeight >= 0;
      @ ensures this.anchor == anchor;
      @ ensures this.closedBoundingBox.x == x && this.closedBoundingBox.y == y
      @      && this.closedBoundingBox.width == closedWidth && this.closedBoundingBox.height == closedHeight;
      @*/
    /**
     * Sets properties from parent class.
     * @param anchor Enumeration defining where the Parent MenuBar is anchored.
     * @param x Integer representing the x-coordinate of this MenuItem.
     * @param y Integer representing the y-coordinate of this MenuItem.
     * @param closedWidth Integer representing the width of this MenuItem.
     * @param closedHeight Integer representing the height of this MenuItem.
     */
    protected void setProperties(Anchor anchor, int x, int y, int closedWidth, int closedHeight)
    {
        this.anchor = anchor;
        this.closedBoundingBox = new Rectangle(x, y, closedWidth, closedHeight);
        // TODO: need to fix 200 width constant
        int openHeight = (closedHeight * items.size()) + items.size();
        switch(anchor)
        {
            default:
            case TOP:
                this.openBoundingBox = new Rectangle
                (
                    closedBoundingBox.x, 
                    closedBoundingBox.y + closedBoundingBox.height, 
                    200, 
                    openHeight
                );
                break;
            case BOTTOM:
                this.openBoundingBox = new Rectangle
                (
                    closedBoundingBox.x, 
                    closedBoundingBox.y - openHeight, 
                    200, 
                    openHeight
                );
                break;
        }
    }
    
    /**
     * Returns the width of the menu when it is closed.
     */
    public int getClosedWidth()
    {
        return closedBoundingBox.width;
    }
    
    /**
     * Sets the font of the Menu.
     * @param font Font to be used for Menu Fonts
     */
    protected void setFont(Font font)
    {
        this.font = font;
    }
    
    /**
     * Initializes all the MenuItems contained within the Menu and the Menu itself.
     */
    @Override
    public void initialize() 
    {
        int yOffset;
        // Initialize MenuItems
        for(int i = 0; i < items.size(); ++i)
        {
            yOffset = i * closedBoundingBox.height;
            items.get(i).setProperties
            (
                anchor, 
                openBoundingBox.x, 
                openBoundingBox.y + yOffset + (i * 1), 
                // TODO: FIX 200 width for menu.
                200, 
                closedBoundingBox.height
            );
            items.get(i).setFont(font);
            items.get(i).setFontColor(fontColor);
            items.get(i).initialize();
        }
    }

    /**
     * Loads content for the MenuItems and the Menu.
     */
    @Override
    public void loadContent(){}

    /**
     * Updates the logic of all the MenuItems and the Menu.
     * @param gameTime GameTime object containing the timing of the current session.
     */
    @Override
    public void update(GameTime gameTime) 
    {   
        // If the Menu has any items check to see if someone is clicking on it. 
        if(items.size() > 0)
        {
            // Determine the User clicked on the menu.
            if(closedBoundingBox.intersects(Mouse.getPosition()) && Mouse.buttonDownOnce(MouseKeys.BUTTON_1))
                menuState = MenuState.OPEN;
            if(menuState == MenuState.OPEN && !closedBoundingBox.intersects(Mouse.getPosition()) && !openBoundingBox.intersects(Mouse.getPosition()))
                menuState = MenuState.CLOSED;
        }

        // Check the State of the Menu
        switch(menuState)
        {
            case OPEN:
                for(MenuItem item : items)
                    item.update(gameTime);
                break;
        }
    }

    /*@
      @ also requires g2d != null;
      @ 
      @*/
    /**
     * Draws the Menu.
     * @param g2d Graphics2D object containing the drawable surface of the window.
     */
    @Override
    public void draw(Graphics2D g2d) 
    {
        g2d.setFont(font);
        g2d.setColor(fontColor);
        // TODO: FIX Magic Padding Numbers + 10 and + 15
        g2d.drawString(LABEL, closedBoundingBox.x + 10, closedBoundingBox.y + 15);
        // If the menu is open draw that piece as well
        if(items.size() > 0 && menuState == MenuState.OPEN)
        {
            g2d.setColor(paneColor);
            // Draw The Menu pane.
            g2d.fillRect(openBoundingBox.x, openBoundingBox.y, openBoundingBox.width, openBoundingBox.height);
            // Draw The Menu Items.
            for(MenuItem item : items)
                item.draw(g2d);
            // Draw The Border around the Menu.
            g2d.setColor(borderColor);
            g2d.drawRect(openBoundingBox.x, openBoundingBox.y, openBoundingBox.width, openBoundingBox.height);
        }
    }
}
