package IA1S2024;    
import robocode.*;
import java.awt.Color;

public class Pareja_5_robot extends Robot {

    public void run() {
        // Configurar los colores del robot
        setColors(Color.BLACK, new Color(0, 221, 252), Color.BLUE); // body, gun, radar

        // Bucle infinito para mantener el robot funcionando
        while (true) {
            // Gira el radar para escanear enemigos
            turnRadarRight(360);
        }
    }

    @Override
    public void onScannedRobot(ScannedRobotEvent event) {
        // Cuando el radar detecta un robot enemigo
        // Apunta el cañón hacia el enemigo
        double absoluteBearing = getHeading() + event.getBearing();
        turnGunRight(normalizeBearing(absoluteBearing - getGunHeading()));

        // Dispara con una potencia de 3
        fire(3);
		turnLeft(45);
        // Se mueve hacia adelante 100 unidades
        ahead(100);
		
    }

    @Override
    public void onHitByBullet(HitByBulletEvent event) {
        // Cuando el robot es alcanzado por una bala
        // Gira el robot 90 grados hacia la derecha
        turnRight(45);
        // Se mueve hacia adelante 100 unidades
        ahead(100);
    }

    @Override
    public void onHitWall(HitWallEvent event) {
        // Cuando el robot choca con una pared
        // Retrocede 100 unidades
        back(100);
        // Gira el robot 90 grados hacia la derecha
        turnRight(90);
    }

    // Método para normalizar el ángulo de giro
    private double normalizeBearing(double angle) {
        while (angle > 180) angle -= 360;
        while (angle < -180) angle += 360;
        return angle;
    }
	
	public void onWin(WinEvent e) {
		for (int i = 0; i < 50; i++) {
			turnRight(30);
			turnLeft(30);
		}
	}
}