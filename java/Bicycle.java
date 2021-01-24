package javaActivity7;

public class Bicycle implements BiCycleParts, BiCycleOperations {
	
	public int gears;
    public int speed;

    public Bicycle(int gears, int speed) {
        this.gears = gears;
        this.speed = speed;
    }

    public void applyBrake(int decrement) {
        speed -= decrement;
        System.out.println("Current speed: " + speed);
    }

    public void speedUp(int increment) {
        speed += increment;
        System.out.println("Current speed: " + speed);
    }

    public String bicycleDesc() {
        return("No of gears are "+ gears + "\nSpeed of bicycle is " + speed);
    }

}
