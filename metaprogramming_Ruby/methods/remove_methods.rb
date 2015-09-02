# when we need to remove some behavior from certain class
# there are two way we can do 
# 1. remove_methods
#   it remove the methods from the reveiver
# 2. undef_methods
#   undefine methods from the reveiver and its ancestors
#

class Parent
  def hello
    puts "In parent"
  end
end
class Child < Parent
  def hello
    puts "In child"
  end
end

c = Child.new
c.hello

class Child
  remove_method :hello  # remove from child, still in parent
end
c.hello

class Child
  undef_method :hello   # prevent any calls to 'hello'
end
c.hello
