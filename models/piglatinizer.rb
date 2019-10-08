require 'pry'
class PigLatinizer

    @@vowels = "aeiouAEIOU"

    def piglatinize(raw_text)
        text = raw_text.split(" ")
        if text.length == 1
            translate_word(text[0])
        else
            translate_phrase(text)
        end
    end

    def translate_word(text)
        if @@vowels.include?(text[0])
            text << "w"
        elsif !@@vowels.include?(text[0]) && !@@vowels.include?(text[1]) && !@@vowels.include?(text[2])
            cons = text.slice!(0..2)
            text << cons
        elsif !@@vowels.include?(text[0]) && !@@vowels.include?(text[1])
            cons = text.slice!(0..1)
            text << cons
        elsif !@@vowels.include?(text[0])
           cons = text.slice!(0) 
           text << cons
        end
        text << "ay"
        text
    end


    def translate_phrase(text)
        translated_phrase = text.each do |word|
            translate_word(word)
        end
        translated_phrase.join(" ")
    end

end