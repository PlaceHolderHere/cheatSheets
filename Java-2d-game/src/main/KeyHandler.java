package main;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class KeyHandler implements KeyListener {

    public boolean upPressed, downPressed, rightPressed, leftPressed;

    // Doesn't do anything
    @Override
    public void keyTyped(KeyEvent e) {}

    @Override
    public void keyPressed(KeyEvent e) {
        // Ascii equivalent of the key pressed
        // ex: A = 69
        int keyCode = e.getKeyCode();

        // if user presses W key
        if (keyCode == KeyEvent.VK_W){
            upPressed = true;
        }
        if (keyCode == KeyEvent.VK_S){
            downPressed = true;
        }
        if (keyCode == KeyEvent.VK_A){
            leftPressed = true;
        }
        if (keyCode == KeyEvent.VK_D){
            rightPressed = true;
        }
    }

    @Override
    public void keyReleased(KeyEvent e) {
        // Ascii equivalent of the key pressed
        // ex: A = 69
        int keyCode = e.getKeyCode();

        // if user lets go of the W key
        // if user presses W key
        if (keyCode == KeyEvent.VK_W){
            upPressed = false;
        }
        if (keyCode == KeyEvent.VK_S){
            downPressed = false;
        }
        if (keyCode == KeyEvent.VK_A){
            leftPressed = false;
        }
        if (keyCode == KeyEvent.VK_D){
            rightPressed = false;
        }
    }
}
