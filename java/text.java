class A
{
	static int a=20,b=10;
	
}
class B extends A
{
	int b,c;
		super.b=10;
		c=10,b=20;
	void Display()
	{
		
		System.out.println(b);
	}
}
class text{
	public static void main(String ars[]) 
	{
		
		B B1=new B();
		B1.Display();
	}
}