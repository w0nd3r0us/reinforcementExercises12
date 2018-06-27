seating = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

#1
seating.each.with_index do |row, row_index|
  row.each.with_index do |seat, seat_index|
    if seat == nil
      puts "Row #{row_index + 1} seat #{seat_index + 1} is free."
    end
  end
end


#2
def seat_find(seating)

  seating.each.with_index do |row, row_index|
    row.each.with_index do |seat, seat_index|
      if seat == nil
        puts "Row #{row_index + 1} seat #{seat_index + 1} is free. Do you want to sit there? (y/n)"
        user_choice = gets.chomp
        if user_choice.downcase == 'y'
          puts "What is your name?"
          user_name = gets.chomp
          seating[row_index][seat_index] = user_name
          p seating
          return
        end
      end
    end
  end

end

puts "-------------------"
seat_find(seating)
