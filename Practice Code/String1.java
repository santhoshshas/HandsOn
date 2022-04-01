
public class String1 {
	

	public static void main(String[] args) {
		String a="Welcome to java world";
		System.out.println(a);
		System.out.println("5th position of given string : "+a.charAt(5));
		System.out.println("Ignoring case differences : "+a.compareToIgnoreCase("Welcome"));
		System.out.println("Concatenates : "+a.concat("-Let us learn"));
		System.out.println("Position of 1st a : "+a.indexOf('a'));
		System.out.println("Replace 'a' as 'e': "+a.replace('a', 'e'));
		System.out.println("substring between 4th and 10th positions: "+a.substring(4, 10));
		System.out.println("the string to lower case: "+a.toLowerCase());
	}

}
