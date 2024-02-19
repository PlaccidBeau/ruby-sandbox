# // Ask the user what login this is for Netflix etc
# // Store the login name as the :id for the password
# // Ask how many characters the password should be
# // Keep the number characters for password length to be used later for a function
# // Ask if special characters should be added
# // Save this yes or no option to be added 
# // Display a generated password and ask if this is alright
# // If the password isn't wanted generate a new password and ask again
# // Once a desired password has been made store it in ####


# // How to target toggle special characters
# cheese = true
# pp cheese
# if cheese == true
#   pp "There will be special characters"
# elsif cheese == false
#   pp "No special chracters needed"
# else
#   pp "Error input true or false only"
# end
# cheese = false

# //
# // Create a random password based on number of characters entered by user
# // Change 10 to the user desired password length
# // make a if statement based on user wanting to add special character to password
# // if true take number password length - 1 + specialChar
# // if false return randWord as the password
require_relative "draft"

class Passwordcreate
  def initialize
    @password = []
  end

  def run
    loop do
      # puts "\n"
      puts "Welcome to passwordCreator"
      puts "Enter 1 to create password"
      puts "Enter 2 to to show all stored passwords"
      puts "Enter 3 to end program"
      print "Please select an option:"
      option = gets.chomp.to_i
      # puts "\n"
      case option
      when 1
        createPassword
      when 2
        showPasswords
      when 3
        puts "Until next time"
        break
      else
        puts "Invalid input, Try again"
    end
  end
end

private

  def createPassword
    print "Enter login email/username:"
    login = gets.chomp
    print "Enter character length (6 or more): "
    password = gets.chomp.to_i
    if password >= 6
      randomSymbol = ['!','@','#','$','%','&','*'].sample
      randomCharacters = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
      randomSymbol = ['!','@','#','$','%','&','*'].sample
      password = (0..password - 2).map { randomCharacters[rand(randomCharacters.length)]}.join + randomSymbol
      @password << Pwbody.new(login, password)
      pp "#{login} - #{password}"
    else pp "Password must be 6 characters or longer. Try again"
    end
  end

  def showPasswords
    if @password.length >= 1
      puts "All logins and passwords:"
      @password.each do |passcode|
        puts passcode
      end
    else
      puts "No saved passwords. Create a new password and try again"
    end
  end
end

# me = randomSymbol
# randL = randomCharacters
# randWord = randomString
me = ['!','@','#','$','%','&','*'].sample
randL = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
# //  for randomPassword with speccial character
randWord = (0..4).map { randL[rand(randL.length)]}.join + me
# randWord = (0..10).map { randL[rand(randL.length)]}.join
# pp randWord
soRandom = randWord.chars
soRandom2 = soRandom.delete_at(rand)
# soRandom2 = soRandom.pop
soRandom3 = soRandom.join
# pp soRandom3
