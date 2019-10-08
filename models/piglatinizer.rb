class PigLatinizer
  def piglatinize(words_string)
    words = words_string.split(" ")
    pig_latin_words = words.map do |word|
      pig_latin(word)
    end
    pig_latin_words.join(" ")
  end

  def pig_latin(word)
    vowels = Set['a', 'e', 'i', 'o', 'u']
    
    trim_off_beginning = ""
    word.each_char do |c|
      break unless !vowels.include?(c.downcase) 
      trim_off_beginning += c
    end

    if trim_off_beginning == ""
      return word + "way"
    else
      word.slice! (trim_off_beginning)
      return word + trim_off_beginning + "ay"
    end
  end
end
