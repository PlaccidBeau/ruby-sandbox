name = ["eric", "mya", "Shreya", ""].sample
# name = ["eric", "Bob", ""].sample
# write your program below
#if eric is picked say "one for eric, one for me"
# def Counter(pickNames)
#   if pickNames == "eric"
#   return "one for eric, one for me"
#   elsif pickNames == ""
#   return "one for you, one for me"
#   end
# end
# who = Counter(name)
# pp who

if name == ""
  pp "one for you, one for me"
elsif name == "Shreya"
  pp "one for #{name.downcase}, one for me"
elsif name == name
  pp "one for #{name}, one for me"
end
