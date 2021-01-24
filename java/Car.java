package javaActivity1;

public class Car {
	
	String color, transmission;
	int make, tyres, doors;
	
	public Car() {
		this.doors = 4;
		this.tyres = 4;
		
	}
	
	public void displayCharacterstics(){
		
		System.out.println("Color of the car = " + color);
		System.out.println("Maker of the car = " + make);
		System.out.println("Transmission of the car = " + transmission);
		System.out.println("Number of doors on the car = " + doors);
	    System.out.println("Number of tyres on the car = " + tyres);
	    }

	    public void accelerate() {
		System.out.println("Car is moving forward.");
	    }
		
	    public void brake() {
		System.out.println("Car has stopped.");
		
	    }
}
