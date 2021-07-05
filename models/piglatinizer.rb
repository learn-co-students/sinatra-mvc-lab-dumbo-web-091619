class PigLatinizer

	def piglatinize(input_str)
		new_array = []
		vowels = "aAeEiIoOuU"

		input_str.split(" ").each { |word|
			if vowels.include?(word[0])
				new_array << word + "way"
			else
				word.each_char.with_index { |char, i|
					if vowels.include?(char)
						new_array << word[i..-1] + word[0...i] + "ay"
						break
					end
				}
			end
		}

	new_string = new_array.join(" ")

	new_string

	end

end