# in Ruby private means that method can't have explict receiver
# in other words, it must be called on the implict receiver - self


class A
  def use_explict_receiver_private_method
    self.private_method
  rescue => e
    p e
  end

  def use_implict_receiver_private_method
    private_method
  end

  private
  def private_method
    p 'in private'
  end
end

p "A.new.use_explict_receiver_private_method"
A.new.use_explict_receiver_private_method

p "A.new.use_implict_receiver_private_method"
A.new.use_implict_receiver_private_method
