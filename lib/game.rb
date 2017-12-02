class Game
  
  def initialize()
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  2.times do
    @dealer.hand.add_card(@deck.deal)
  end

  puts "Welcome to Blackjack: "
  puts ""
  2.times do
  @player.hand.add_card(deck.deal)
  print "Player was dealt "
  print @player.hand.hand_of_cards[-1].suit
  print @player.hand.hand_of_cards[-1].value
  puts ""
  end
  print "Player score: "
  print @player.hand.calculate
  puts ""
  puts ""
  print "The dealer shows "
  @dealer.show_one
  puts ""
  puts ""

  puts "Would you like to hit or stay? (H or S)"
  input = ''
  while @player.hand.calculate < 21 && input != 'S' do
    input = gets.chomp()
    if input == 'H'
      print "Player was dealt "
      @player.hand.add_card(deck.deal)
      print @player.hand.hand_of_cards[-1].suit
      print @player.hand.hand_of_cards[-1].value
      puts ""
      puts ""
    else
      puts "Please put a valid input"
    end
    if @player.hand.calculate > 21
      puts "Busted"
    end
  end

  while @dealer.hand.calculate < 17 do
    if @dealer.hand.calculate < 17
      @dealer.hand.add_card(deck.deal)
    end
      @dealer.show_hand
      puts ""
  end

  if @dealer.hand.calculate > @player.hand.calculate && @player.hand.calculate <= 21
    puts "Dealer wins with..."
    @dealer.show_hand
  elsif @dealer.hand.calculate == @player.hand.calculate && @player.hand.calculate <= 21
    puts "Draw. Keep your money."
  elsif @dealer.hand.calculate < @player.hand.calculate && @player.hand.calculate <= 21
    puts "You win!"
  else
    puts "You lose"
  end
  end
