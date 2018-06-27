def select_cards(possible_cards, hand)

  possible_cards.each do |current_card|
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if hand.length == 0 && current_card == possible_cards[-3]
      print "You need 3 cards total. You are left with the last 3 cards: #{current_card}, #{possible_cards[-1]} and #{possible_cards[-2]}"
      hand << possible_cards[-3]
      hand << possible_cards[-2]
      hand << possible_cards[-1]
      return hand
    elsif hand.length == 1 && current_card == possible_cards[-2]
      print "You need 3 cards total. You are left with the last 2 cards: #{current_card} and #{possible_cards[-1]}"
      hand << possible_cards[-2]
      hand << possible_cards[-1]
      return hand
    elsif hand.length == 2 && current_card == possible_cards[-1]
      print "You need 3 cards total. You are left with the last card: #{current_card}"
      hand << possible_cards[-1]
      return hand
    end

    if answer.downcase == 'y'
      hand << current_card
      if hand.length == 3
        return hand
      end
    end
  end
  return hand

end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "\nYour new hand is: \n#{display_hand}"
