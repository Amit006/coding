class A
{
	static int a,b;
	void Display(){
		System.out.println(a);
	}
}
class B extends A
{	
	// int b,c;
	super.b=10;
	int c=10,b=20;
	void Display()
	{
		Syatem.out.println(b);

	}
}
class text{
	public static void main(String ars[]) 
	{
		A A1=new A();
		B B1=new B();

		A1.Display();
		B1.Display();
		A1.Display();
	}
}