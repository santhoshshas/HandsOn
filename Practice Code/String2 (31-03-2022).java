
public class String2 {

	public static void main(String[] args) {
		StringBuffer a=new StringBuffer("This is StringBuffer");
		System.out.println("String buffer : "+a);
		System.out.println("Concatenates to another string: "+a.append("-This is a sample program"));
		System.out.println("Inserting a string at 21th position: "+a.insert(21, "Object"));
		System.out.println("Replacing word 'Buffer' to 'Builder: "+a.replace(14, 20, "Builder"));
		System.out.println("Reversing the stringbuffer: "+a.reverse());
		System.out.println(4%2);
	}

}
