class System

def initialize
  @bodies = []
end

def bodies
  @bodies
end

def bodies=(bodies)
  @bodies=bodies
end

def add(body)
  if @bodies.include?(body)
    puts "We already have a #{body.name}!"
  else
    @bodies << body
  end
end

def total_mass
  total = 0
  @bodies.each do |body|
    total = total + body.mass
  end
  return total
end

end

class Body < System

def initialize(name, mass)
  @name = name
  @mass = mass
end

def name
  @name
end

def mass
  @mass
end

def name=(name)
  @name = name
end

def mass=(mass)
  @mass=mass
end

end

class Planet < Body

def initialize (name, mass, day, year)
  super(name, mass)
  @day = day
  @year = year
end

def day
  @day
end

def year
  @year
end

def day=(day)
  @day = day
end

def year=(year)
  @year = year
end

end


class Star < Body

def initialize (name, mass, type)
  super(name, mass)
  @type = type
end

def type
  @type
end

def type=(type)
  @type=type
end

end

class Moon < Body

def initialize (name, mass, month, planet)
  super(name, mass)
  @month = month
  @planet = planet
end

def month
  @month
end

def planet
  @planet
end

def month=(month)
  @month = month
end

def planet=(planet)
  @planet=planet
end

end

#NB earth hours/days used in all instances

solar_system = System.new
Sun= Star.new("Sol", 99.86, "G-type")
puts Sun.inspect
solar_system.add(Sun)
Earth=Planet.new("Terra", 0.13, 24, 365.25)
puts Earth.inspect
solar_system.add(Earth)
Earth_Moon=Moon.new("Luna",0.01, 28, Earth)
puts Earth_Moon.inspect
solar_system.add(Earth_Moon)
Sand_Planet=Planet.new("Tattoine", 0.05, 30, 400)
puts Sand_Planet.inspect
solar_system.add(Sand_Planet)

solar_system.add(Earth)





puts solar_system.total_mass
