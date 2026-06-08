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
    private BufferedImage right_idle;
    private BufferedImage left_idle;
    private BufferedImage[] walk_left_sprites = new BufferedImage[4];
    private BufferedImage[] walk_right_sprites = new BufferedImage[4];
    private BufferedImage current_sprite;
    String direction = "RIGHT";
    String currentState = "IDLE";
    int animation_cycle = 0;
    int animationTimerFrames = 4;


    // Constructor
    public Player(int x, int y, int speed, GamePanel gp){
        this.x = x;
        this.y = y;
        this.speed = speed;
        this.gp = gp;
        getPlayerSprite();
        current_sprite = right_idle;
    }

    public void getPlayerSprite() {
        try {
            walk_left_sprites[0] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_left_00.png")));
            walk_left_sprites[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_left_01.png")));
            walk_left_sprites[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_left_02.png")));
            walk_left_sprites[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_left_03.png")));

            walk_right_sprites[0] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_right_00.png")));
            walk_right_sprites[1] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_right_01.png")));
            walk_right_sprites[2] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_right_02.png")));
            walk_right_sprites[3] = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/walk_right_03.png")));

            left_idle = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/idle_left.png")));
            right_idle = ImageIO.read(Objects.requireNonNull(getClass().getResourceAsStream("/player/idle_right.png")));
        }
        catch (IOException e){
            e.printStackTrace();
        }
    }

    public void updateCurrentSprite(){
        if (direction.equals("LEFT")){
            if (currentState.equals("WALKING")){
                current_sprite = walk_left_sprites[animation_cycle];
            }
            else{
                current_sprite = left_idle;
            }
        }
        else if(direction.equals("RIGHT")){
            if (currentState.equals("WALKING")){
                current_sprite = walk_right_sprites[animation_cycle];
            }
            else{
                current_sprite = right_idle;
            }
        }
    }

    public void draw(Graphics2D g2){
        // Walking Animation
        animationTimerFrames -= 1;
        if (animationTimerFrames < 0){
            animationTimerFrames = 4;
            animation_cycle++;

            if (animation_cycle > 3){
                animation_cycle = 0;
            }
        }
        updateCurrentSprite();

        g2.setColor(Color.white);
        g2.drawImage(current_sprite, x, y, gp.SCALED_TILE_SIZE, gp.SCALED_TILE_SIZE, null);
    }
}
