# this is not a baseball player
class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    (@hits / @at_bats).to_f
  end

  def on_base_percentage
    (@hits + @walks) / @at_bats.to_f
  end
end

angie = BaseballPlayer.new(50, 50, 100)
p angie.batting_average
p angie.on_base_percentage
