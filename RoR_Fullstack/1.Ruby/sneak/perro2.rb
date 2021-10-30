require_relative "mamifero"

class Perro < Mamifero
  def pet
    @health +=5
    self
  end

  def walk
    @health -=1
    self
  end
  
  def run
    @health -=10
    self
  end
end

d = Perro.new
d.display_health
d.walk.walk.walk.run.run.pet.display_health