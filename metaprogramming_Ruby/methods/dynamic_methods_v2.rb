# in the first we use send to collect all the duplication
# then for each component we can simply call the collected method
# in this example we will use another techine - defind_method 
# The original class is the same as dynamic_methods.rb
#

class C
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(type)
    define_method(type) do
      info = @data_source.send "get_#{type}_info", @id
      price = @data_source.send "get_#{type}_price", @id
      "#{type.capitalize}: #{info} ($#{price})"
    end
  end

  define_component :mouse
  define_component :keyboard
  define_component :monitor
end
