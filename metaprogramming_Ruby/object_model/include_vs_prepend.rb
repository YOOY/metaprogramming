# when we include a module in class
# Ruby add the module into the method lookup chain before the class
# So what if we want to let the module placed after the class
# then we need to use prepend
#

module M1
  def where_am_i
    p 'inside M1'
  end
end

class C1
end

class C2 < C1
  include M1
  def where_am_i
    p 'inside C2'
  end
end

class C3 < C1
  prepend M1
  def where_am_i
    p 'inside C3'
  end
end

p 'this is the ancestors of C2 which include M1'
p C2.ancestors
p 'so when the same method is define in C2 and M1'
C2.new.where_am_i

p 'this is the ancestors of C3 which prepend M1'
p C3.ancestors
p 'so when the same method is define in C3 and M1'
C3.new.where_am_i

