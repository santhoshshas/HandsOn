import java.util.Scanner;

public class SumAndAverage {

	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		int n,sum = 0;
		float average;
		System.out.println("Enter the no of element");
		n=s.nextInt();
		int a[]=new int[n];
		System.out.println("Enter the element");
		
		for( int i=0;i<n;i++)
		{
			a[i]=s.nextInt();
			sum=sum+a[i];
			
		}
		System.out.println("Sum : "+sum);
		average=sum/n;
		System.out.println("Average : "+average);
	}

}
