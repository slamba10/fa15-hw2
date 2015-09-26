class Foobar
  # ENTER CODE FOR Q2 HERE
  def initialize(baz)
  	@baz = baz
  end

  def bar(cat, optional={})
  	return "#{cat}#{@baz}#{optional[:sat]}" 
  end

end
