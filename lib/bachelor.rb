require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |ssn, contestants|
    contestants.each do |contest|
      contest.each do |key, value|
        if ssn == season && key == "status"
          return firstname = contest['name'].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |ssn, contestants|
    contestants.each do |contest|
      contest.each do |key, value|
        if key == "occupation" && value == occupation
          return contest['name']
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |ssn, contestants|
    contestants.each do |contest|
      contest.each do |key, value|
        if key == "hometown" && value == hometown
          count += 1
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |ssn, contestants|
    contestants.each do |contest|
      contest.each do |key, value|
        if key == "hometown" && value == hometown
          return contest['occupation']
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  num_of_contests = 0

  data.each do |ssn, contestants|
    if ssn == season
      contestants.each do |contest|
        num_of_contests += 1
        contest.each do |key, value|
          if key == 'age'
            sum += value.to_i
          end
        end
      end
    end
  end
  return (sum / num_of_contests).ceil
end
