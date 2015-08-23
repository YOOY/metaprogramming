# consider the following code
# it contain many duplicate codes
# can use dynamic method to replace all the duplication
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    return "Mouse: #{info} ($#{price})"
  end

  def keyboard
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    return "Mouse: #{info} ($#{price})"
  end

  def monitor
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    return "Mouse: #{info} ($#{price})"
  end
end

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def component(type)
    info = @data_source.send("get_#{type}_info",  @id)
    price = @data_source.send("get_#{type}_price", @id)
    "#{type.capitalize}: #{info} ($#{price})"
  end

  def mouse
    component "mouse"
  end

  def keyboard
    component "keyboard"
  end

  def monitor
    component "monitor"
  end
end
