package main;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Objects;

public class Player {
    public int x, y;
    public int speed;
    GamePanel gp;
    private BufferedImage sprite;

    // Constructor
    public Player(int x, int y, int speed, GamePanel gp){
        this.x = x;
        this.y = y;
        this.speed = speed;
        this.gp = gp;
        getPlayerSprite();
    }

    public void getPlayerSprite() {
        try {
            sprite = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/sprite_00.png")));
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }

    public void draw(Graphics2D g2){
        g2.setColor(Color.white);
        g2.drawImage(sprite, x, y, gp.SCALED_TILE_SIZE, gp.SCALED_TILE_SIZE, null);
    }
}
