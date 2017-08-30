class Scrabble

  def score(word = nil)
    if word == nil || word == ""
      return 0
    else
      letters = word.upcase.split('')
      value = letters.map { |letter| point_values.values_at(letter)[0] }
      tally = value.inject(:+)
    end
  end

  def score_with_multipliers(word, multiplier = 1)
    double_letters = word.split("").detect{ |l| word.count(l) > 1 }
    modified = word.concat(double_letters)
    require 'pry'; binding.pry
    value = score(modified)
    tally = value * multiplier
  end


  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end

game = Scrabble.new
game.score_with_multipliers("hello")
