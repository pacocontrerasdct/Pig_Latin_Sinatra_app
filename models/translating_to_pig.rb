class Pignerization
  
  # should move first letter to end of string and add 'ay'
  def self.consonant word
    word[1].upcase.concat word[2..word.length].concat word[0].concat ('ay')
  end

  # should capitalize first letter and add 'ay' at the end of the string
  def self.vowel word
    word[0].upcase.concat word[1..word.length].concat ('ay')
  end

end