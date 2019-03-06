require 'pry'

class PigLatinizer

  def piglatinize(word)
    if word.include?(" ")
      return to_pig_latin(word)
    end

    letters = word.split('')
    if vowel?(letters[0].downcase)
        letters << "w"
    elsif !vowel?(letters[0].downcase) && !vowel?(letters[1].downcase) && !vowel?(letters[2].downcase)
        letters << letters.shift(3)
    elsif !vowel?(letters[0].downcase) && !vowel?(letters[1].downcase)
      letters << letters.shift(2)
    else

      letters << letters.shift

    end
    letters << "ay"
    letters.join

  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.map! {|word| piglatinize(word)}
    words.join(" ")
  end

  def vowel?(letter)
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end


end
