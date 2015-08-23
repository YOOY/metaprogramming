# ghost_method is using the method_missing
# when Ruby can't find the method the one object received
# it will invoke BasicObject#method_missing
# we can customize method_missing to have our logic inside
#

class C
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(type)
    super if !@data_source.respond_to?("get_#{type}_info")
    info = @data_source.send("get_#{type}_info",  @id)
    price = @data_source.send("get_#{type}_price", @id)
    "#{type.capitalize}: #{info} ($#{price})"
  end
end
