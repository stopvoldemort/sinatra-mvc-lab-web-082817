class PigLatinizer

  # attr_reader :phrase
  #
  # def initialize(phrase)
  #   @phrase = phrase
  # end

  def to_pig_latin(phrase)
    arr = phrase.split(" ")
    arr.map do |word|
      piglatinize(word)
    end.join(" ")
  end


  def piglatinize(word)
    if word[0].match(/([aeiouAEIOU])/)
      "#{word}way"
    else
      word_array = word.split(/([aeiou].*)/)
      new_word = [word_array[1], word_array[0]].join
      "#{new_word}ay"
    end
  end



end
