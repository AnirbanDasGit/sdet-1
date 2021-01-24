package javaActivity8;

public class NewClass {
	
	public static void main(String[] a){
        try {
            NewClass.exceptionTest("Will print to console");
            NewClass.exceptionTest(null);
            NewClass.exceptionTest("Won't execute");
        } catch(CustomException mae) {
            System.out.println("Inside catch block: " + mae.getMessage());
        }
    }

    static void exceptionTest(String str) throws CustomException {
        if(str == null) {
            throw new CustomException("String value is null");
        } else {
            System.out.println(str);
        }
    }

}
