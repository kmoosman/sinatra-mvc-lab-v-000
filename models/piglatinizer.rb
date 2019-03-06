class PigLatinizer

  def piglatinize(word)
    return word if %w[and an in].include?(word)
    letters = word.split('')
    letters.keep_if {|letter| letter != "."}
    if vowel?(letters[0].downcase)
        letters << "w"
    elsif !vowel?(letters[0].downcase) && !vowel?(letters[1].downcase) && !vowel?(letters[2].downcase)
        letters << letters.shift(3)
    elsif !vowel?(letters[0].downcase) && !vowel?(letters[1].downcase)
      letters << letters.shift(2)
    else

      letters << letters.shift

      # end

    end
    # end
    letters << "ay"
    letters.join

  end

  def vowel?(letter)
    # letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end


end
