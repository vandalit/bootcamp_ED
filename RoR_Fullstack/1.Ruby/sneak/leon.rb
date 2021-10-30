class Leon < Mamifero
	
	def initialize
		super
		@health = 170
	end	

	def fly(num)
		@health -= 10*num
		self	
	end	

	def attack_town(num)
		@health -= 50*num
		self
	end	
	
	def eat_humans(num)
		@health -= 20*num
		self
	end	
end

leo = Leon.new
puts leo

puts leo.attack_town(3).eat_humans(2).fly(2).display_health
