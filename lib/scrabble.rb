class Scrabble
  def initialize(word)
    @word = word
  end
  def score
    return 0 if @word == nil || @word == ''
    scores =  {
      :' ' => 0,
      :AEIOULNRST =>	1,
      :DG =>	2,
      :BCMP =>	3,
      :FHVWY =>	4,
      :K =>	5,
      :JX	=> 8,
      :QZ =>	10
              }
    result = @word.strip.upcase.split('')
                .map { |letter| scores[scores.keys.grep(/#{letter}/)[0]]}
                .reduce(:+)
    result == nil ? 0 : result
  end
end
