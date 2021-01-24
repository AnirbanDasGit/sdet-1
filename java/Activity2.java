package javaActivity2;

public class Activity2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] arr = {10, 77, 10, 54, -11, 10};
		int sum = 0, num = 10, total = 30;
		
		for(int i = 0; i <= arr.length-1; i++) {
			if(arr[i] == num)
				sum = sum+arr[i];
		}
		System.out.println(sum);
		
		if(sum == total)
			System.out.println("Sum of 10's are equal to 30");
		else
			System.out.println("Sum of 10's are not equal to 30");

	}

}
