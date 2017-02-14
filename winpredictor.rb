require 'Date'
    @today = Date.today

class Winpredictor
  def initialize(team, last_5)
    @team = team
    @last_5 = last_5
  end

  def determine_win_chance
    @win_chance = 50

      @last_5.each_with_index do |result, index|
        if result == "w"
          @win_chance += (index + 1) * 3
        else
          @win_chance -= (index + 1) * 3
        end
      end
        @win_chance
    end

  def make_prediction
    if @win_chance > 50
      prediction = "#{@team}: WIN \n--bias: #{@win_chance}%\n-current streak: #{@last_5.join(" ").upcase}\n\n"
    else
      prediction = "#{@team}: LOSE\n--bias: #{@win_chance}%\n-current streak: #{@last_5.join(" ").upcase}\n\n"
    end
    prediction
  end

end

# celtics = Winpredictor.new("Celtics", ["l","l","l","w","w"])
# celtics.determine_win_chance
# p celtics.make_prediction

nba = {
  "Portland Trail Blazers" => ["w","l","l","w","l"],
  "Dallas Mavericks" => ["l","l","w","w","l"],
  "Utah Jazz" => ["w","w","l","l","l"],
  "Boston Celtics" => ["w","l","w","w","w"],
  "NY Knicks" => ["l","l","l","l","w"]
  }


# File.open("predictions.txt", 'a') {|f| f.write("#{@today} Next Game Predictions:\n\n") } # puts a title on the prediction - including the date.

nba.each do |team, last_5|
  this_team = Winpredictor.new(team, last_5)
  this_team.determine_win_chance
  File.open("predictions.txt", 'a') {|f| f.write(this_team.make_prediction) }

end
