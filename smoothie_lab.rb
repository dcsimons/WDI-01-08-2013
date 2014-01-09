# file path:  DSimons/WDI/01 08 2013/smoothie_lab.rb

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}



class Blender

	def initialize (smoothie_ingredients, power="OFF")
		@smoothie_ingredients = smoothie_ingredients
		@power = power
	end

	def string_shuffle(word)
  	word.split(//).shuffle.join
	end

	def blend(smoothie_ingredients)
		ingredient_types = smoothie_ingredients.keys
		# p ingredient_types

		no_bubble_ingredients = ingredient_types.join.split(" ").join
		blended_ingredients =  string_shuffle(no_bubble_ingredients)
		puts blended_ingredients

	end

	def start

		puts "Do you want to make a smoothie? Turn the power ON! If not, type NO."
		power = gets.chomp

		until power == "OFF"	
			if power == "ON"
				curr_smoothie = @smoothie_ingredients
				blend(curr_smoothie)
				puts "Enjoy your smoothie!"
				power = "OFF"
			elsif power == "NO"
				puts "You are missing out!"
				power = "OFF"
			else
				puts "Invalid choice.  Turn the power ON! If not, type NO."
				power = gets.chomp
			end
		end

		puts "Have a good day!"

	end

end

smoothie = Blender.new(smoothie_ingredients)
smoothie.start

