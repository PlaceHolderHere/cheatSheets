package main;

import javax.swing.*;
import java.awt.*;

public class GamePanel extends JPanel implements Runnable{
    // CONSTANTS
    final int TILE_SIZE = 48;
    final int SCREEN_COLS = 16;
    final int SCREEN_ROWS = 9;
    final int SCREEN_WIDTH = SCREEN_COLS * TILE_SIZE;
    final int SCREEN_HEIGHT = SCREEN_ROWS * TILE_SIZE;
    final Color BACKGROUNDCOLOR = Color.black;

    // Object handling key inputs
    KeyHandler keyH = new KeyHandler();

    // game loop
    Thread gameThread;

    // Game Variables
    final int FPS = 60;
    final double DRAW_INTERVAL = (double) 1_000_000_000 / (double) FPS;  // ~0.01666 seconds at 60 FPS
    double nextDrawTime;
    double remainingTime;

    // player variables
    int playerX = 100;
    int playerY = 100;
    final int playerSpeed = 10;

    public GamePanel(){
        this.setPreferredSize(new Dimension(SCREEN_WIDTH, SCREEN_HEIGHT));
        this.setBackground(BACKGROUNDCOLOR);
        this.setDoubleBuffered(true); // for better performance
        this.addKeyListener(keyH); // Allows game panel to recognize key inputs/presses
        this.setFocusable(true);
    }

    // Starting the Game loop
    public void startGameThread(){
        gameThread = new Thread(this);
        gameThread.start();
    }

    // Game Loop
    @Override
    public void run() {
        while (gameThread != null){
             nextDrawTime = System.nanoTime() + DRAW_INTERVAL;

            // Updating the Frame
            updateFrame();

            // Redrawing the Frame
            repaint();

            // Capping the game at 60 FPS
            try {
                remainingTime = nextDrawTime - System.nanoTime();
                remainingTime /= 1_000_000; // converting nanoseconds to milliseconds
                if (remainingTime > 0){
                    Thread.sleep((long)remainingTime);
                }
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void updateFrame(){
        // Key Presses
        if (keyH.upPressed){
            playerY -= playerSpeed;
        }
        if (keyH.downPressed){
            playerY += playerSpeed;
        }
        if (keyH.leftPressed){
            playerX -= playerSpeed;
        }
        if (keyH.rightPressed){
            playerX += playerSpeed;
        }
    }

    public void paintComponent(Graphics g){
        super.paintComponent(g);

        Graphics2D g2 = (Graphics2D) g;

        g2.setColor(Color.white);

        // Parameters: x, y, width, height
        g2.fillRect(playerX, playerY, TILE_SIZE, TILE_SIZE);

        // Helps Save memory
        g2.dispose();
    }
}
