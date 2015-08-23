# I'm quite understand the behavior of the following case
# this is how book explain the behavior
# even if you call another_method after using,
# the call to my_method itself happens before using—so it calls the original,
# unrefined version of the method
# http://blog.headius.com/2012/11/refining-ruby.html
class C
  def one_method
    p 'original one_method'
  end

  def another_method
    one_method
  end
end

module M
  refine C do
    def one_method
      p 'refined one_method'
    end
  end
end

using M
p 'C.new.one_method'
C.new.one_method
p 'C.new.another_method'
C.new.another_method
