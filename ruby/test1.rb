class MyClass
    print("hello world::")
    name=gets()
    puts("hello #{name}")

  def dog(dname)
    @Myname=("#{dname}")
  end
    def getname()
      return @Myname
    end

  def talk(voice)
    return "#{voice}"
  end

  def full_name(a_First_name,a_scened_name)
    return "hello #{a_First_name} #{a_scened_name}"
  end

    def initialize( aName, aDescription )
      @name = aName
      @description = aDescription
    end
  subtotal=1000.00
  tax_rate=0.175
  print ("enter price (ex tax):")
  s=gets()
  subtotal=s.to_f
  if(subtotal <= 0.00) then
     puts "value can take as subtotal = #{subtotal= 0.00}"
  end
  tax=subtotal * tax_rate
  puts "tax on $#{subtotal} is $#{tax},so grand total is $#{subtotal + tax}"
end

ob=MyClass.new("sword", "a lovely elvish wapon")
ob.dog('riko')
puts(ob.getname())
puts(ob.talk('woffwoof'))
puts(ob.full_name('Amit','Nayek'))


puts(ob.to_s)
puts(ob.inspect)
p(ob)


