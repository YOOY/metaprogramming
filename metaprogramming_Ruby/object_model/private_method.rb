# in Ruby private method means that method can't have explicit receiver
# in other words, it must be called on the implicit receiver - self


class A
  def use_explicit_receiver_private_method
    self.private_method
  rescue => e
    p e
  end

  def use_implicit_receiver_private_method
    private_method
  end

  private
  def private_method
    p 'in private'
  end
end

p "A.new.use_explicit_receiver_private_method"
A.new.use_explicit_receiver_private_method

p "A.new.use_implicit_receiver_private_method"
A.new.use_implicit_receiver_private_method
