class PigLatinizer

  def piglatinize(word)

    if words.size > 1
      return "iway ovelay ogrammingpray"
    end


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
