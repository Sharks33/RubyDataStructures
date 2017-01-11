puts "Hello World"


class Instrument
  def initialize
    puts "Creating a new Instrument"
  end

  #create setter
  def set_name(new_name)
    @name = new_name
  end

  #create getter
  def get_name
    @name
  end

  def name
    @name
  end

  def name=(new_name)
    if new_name.is_a?(Numeric)
      puts "An Instrument name can not be a number"
    else
      @name = new_name
    end
  end
end

guitar = Instrument.new #create guitar object of type Instrument

guitar.set_name("Gibson") #use setter to set guitar name
puts guitar.get_name #use getter to get guitar name

guitar.name = "Fender"
puts guitar.name



class Bass
  #attr_accessor gets all setters and getters
  attr_accessor :name, :type, :origin

  def sound
    "bum ba bum bum"
  end

  fenderp = Bass.new

  fenderp.name = "Fender"
  fenderp.type = "Percussion"
  puts fenderp.name + fenderp.type
end
