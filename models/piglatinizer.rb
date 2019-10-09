class PigLatinizer

   

    def piglatinize(sentence)
        text = sentence.split(" ")
        vowels = 'aeoiuAEOIU'
        output = []
        text.map do |word|
            char_arr = word.chars
            if word_has_vowel(word)
                char_arr.each.with_index do |char, index|
                      if vowels.include?(char_arr[0])
                          pignified_word = char_arr.join("") + "way"
                          output << pignified_word
                          break
                      elsif vowels.include?(char)
                          pre_vowel = char_arr.take(index)
                          post_vowel = char_arr[index..-1]
                          pignified_word = post_vowel.join("") + pre_vowel.join("") + "ay"
                          output << pignified_word
                          break
                      end
                end
            else
            output << word
            end
        end
        return output.join(" ")
    end


    def word_has_vowel(word)
        vowels = 'aeiouAEOIU'
        word.each_char do |char|
            if vowels.include?(char)
                return true
            end
        end
        return false

    end




end