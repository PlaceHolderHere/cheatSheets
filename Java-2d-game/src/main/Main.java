package main;

import javax.swing.*;

public class Main{
    public static void main(String[] args) {
        // Window
        JFrame window = new JFrame();
        window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        window.setResizable(false);
        window.setTitle("2D Game");

        GamePanel gamePanel = new GamePanel();
        window.add(gamePanel);

        window.pack(); // Causes the window to follow the preferred window size to fit layout & subcomponents

        window.setLocationRelativeTo(null); // Centers the Window on the Screen
        window.setVisible(true);

        // Starting the game loop
        gamePanel.startGameThread();
    }
}