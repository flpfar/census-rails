class RankedName
  attr_reader :name, :rate, :ranking

  def initialize(name:, rate:, ranking:)
    @name = name
    @rate = rate
    @ranking = ranking
  end
end
