# because of monkey patch will modify the code globally,
# it will make the error hard to trace
# In Ruby 2.0, refinement is introduced to improve the weakness of monkey patch
# The scope of refinement is 
#   refine blcok itself
#   after "using" until the ned of the class(module) of file
#
# syntax :
# module M
#   refine Class do
#     some changes
#   end
# end
#
# class C
#   using M
# end
#

module A
  refine ::String do
    def reverse
      p "refine version of reverse"
      split(',')
    end
  end
end

p "a,b,c,d".reverse
using A
p "a,b,c,d".reverse
