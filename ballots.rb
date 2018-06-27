require 'pry'

ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

candidates = {
    "Smudge" => 0,
    "Bella" => 0,
    "Lucky" => 0,
    "Boots" => 0,
    "Tigger" => 0,
    "Simba" => 0,
    "Felix" => 0
}


# If the candidate is the voted 1st, they get 3 pts. If voted 2nd, 2pts. And if 3rd, 1pt.

def results(ballots, candidates)

  candidates.each do |can, points|
    ballots.each do |ballot|
      ballot.each do |num, vote|
        if can == vote && num == 1
          candidates[can] += 4
        elsif can == vote && num == 2
          candidates[can] += 2
        elsif can == vote && num == 3
          candidates[can] += 1
        end
      end
    end
  end
  return candidates

end

def who_won?(final_results)
  winner = final_results.max_by {|k,v| v}
  return "And the winner is #{winner[0]}, with #{winner[1]} points!"
end

p final_results = results(ballots, candidates)
p who_won?(final_results)
