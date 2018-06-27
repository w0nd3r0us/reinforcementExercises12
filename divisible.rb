hash = {}

(1..50).each do |num|
  if num % (2*7) == 0
    hash[num] = num * 2
  elsif num % 2 == 0
    hash[num] = num + 1
  elsif num % 7 == 0
    hash[num] = num - 1
  else
    hash[num] = num
  end
end

p hash
