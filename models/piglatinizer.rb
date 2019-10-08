require "pry"

class PigLatinizer


  def piglatinize(text)
    words = text.split(" ")
    vowel_words = words.map do |word|
        word.split(/([aeiouAEIOU].*)/)
    end
    latin_words = vowel_words.map do |word_array|
      if word_array[0] == ""
        "#{word_array[1]}way"
      elsif word_array.size == 1
        "#{word_array[0]}way"
      else
      "#{word_array[1]}#{word_array[0]}ay"
      end
    end
    latin_words.join(" ")
  end

  end
