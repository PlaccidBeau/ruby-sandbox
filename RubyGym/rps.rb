options = ["rock", "paper", "scissors"]
cpu_guess = options.sample
pp cpu_guess
str = gets.chomp
if options.include?(str)
  player_choice = str.downcase
  win = "You win #{player_choice} beats #{cpu_guess}"
  lose = "You lose #{cpu_guess} beats #{player_choice} "
  if player_choice == cpu_guess
    pp "Tied try again"
  elsif player_choice == "rock" && cpu_guess == "scissors"
    pp win
  elsif player_choice == "scissors" && cpu_guess == "paper"
    pp win
  elsif player_choice == "paper" && cpu_guess == "rock"
    pp win
  elsif cpu_guess == "rock" && player_choice == "scissors"
    pp lose
  elsif cpu_guess == "scissors" && player_choice == "paper"
    pp lose
  elsif cpu_guess == "paper" && player_choice == "rock"
    pp lose
  end
end
# puts str
