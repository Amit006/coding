class A
{
	int a,b;
	void Display(int p)
	{
		int a=p;
		System.out.println(a);
	}
	
}
class B extends A
{
	int p;
	void Insert(int a,int b)
	{
		int p=a;
		 super.b=b;
	}
}
class test {
	public static void main(String args[])
	{
		A A1= new A();
		B B1= new B();

		A1.Display(10);
		B1.Insert(20,30);
	}
}