options = [1,2,3,4,5,6]
computer_roll = options.sample
pp computer_roll
player_guess = gets.chomp.to_i
if options.include?(player_guess)
  win = "You guessed correctly"
  lose = "Sorry, you guessed #{player_guess}. The die landed on #{computer_roll}"
  if player_guess == computer_roll
    pp win
  elsif player_guess != computer_roll
	  pp lose
  end
else
  pp player_guess.class
end
