secret = [
  "I have a secret to share",
  "Is this secure enough for my PASSWORD?",
  "we should be more clever"
].sample

secret.each do |letter|
  if letter == 'a'
    letter = '1'
  elsif letter == 'e'
    letter = '2'
  elsif letter == 'i'
    letter = '3'
  elsif letter == 'I'
    letter = '3'
  elsif letter == 'o'
    letter = '4'
  elsif letter == 'u'
    letter = '5'
  end
end
