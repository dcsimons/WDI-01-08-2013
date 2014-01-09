# file path:  DSimons/WDI/01 08 2013/adventure_class.rb

story_hash = {
	"question" => "Welcome to the haunted hotel. What room would you like to go to?",
	"room 1" => "you're dead",
	"room 2" => {	"question" => "You picked a good room. What would you like to do?",
								"sleep" => "You're rested for the morning",
								"stay up all night" => "You might have anxiety issues."
							}
}

class Adventure

	def initialize (story_hash)
		@story_hash = story_hash

	end

	def prompt(question, options)
		puts question
		puts "#{options}"
		response = gets.chomp

	end

	def prompt_n_chomp(question, options)
		response = prompt(question, options)

		until options.include?(response)
			puts "Invalid choice."
			response = prompt(question, options)
		end

		return response

	end

	def get_options(curr_story_hash)
		curr_story_hash.keys.select { |x| x != "question" }
	end

	def start
		curr_story_hash = @story_hash
		question = curr_story_hash["question"]
		options = get_options(curr_story_hash)

		until options.nil?
			response = prompt_n_chomp(question, options)
			
			if curr_story_hash[response].is_a?(Hash)
				curr_story_hash = curr_story_hash[response]
				question = curr_story_hash["question"]
				options = get_options(curr_story_hash)

			else
				puts curr_story_hash[response]
				options = nil

			end

		end

	puts "THE END"	

	end

end

adv = Adventure.new(story_hash)
adv.start