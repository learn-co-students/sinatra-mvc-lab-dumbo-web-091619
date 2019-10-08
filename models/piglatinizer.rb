class PigLatinizer
   # Pig latin translation uses the following rules:
   # - for words that start with a vowel, add 'yay' to the end
   # - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

    def piglatinize(word)
        vowels = ["a","e","i","o","u","I","A","E","O","U"]
        new_arr = []
        words = word.split(' ')
        words.each{ |word|
            if vowels.include?(word.chars.first)
               new_arr << word + "way"
            else
                new_arr << method1(word)
            end
        }
        return new_arr.join(' ')
    end

    def method1(word)
        vowels = ["a","e","i","o","u","I","A","E","O","U"]
        charss = word.chars
        vchar = charss.find{|char| vowels.include?(char)}
        vchar_idx = word.index(vchar)
        return word[vchar_idx..-1] + word[0...vchar_idx] + "ay"
    end
end