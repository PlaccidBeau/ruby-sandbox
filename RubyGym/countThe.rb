sentences = [
  "the dog, the cat, the zebra, the giraffe",
  "the, the code, and the developer",
  "then the- their",
  'the- then, the',
  'the, beginning the end and the middle',
  'the cabbage, the bagel, the apple, the drink, the bread'
]
sentence = sentences.sample
theCount = 0
theSentence = sentence.gsub(/[-,]/, '').split
pp sentence
# pp sentence.gsub(/[-,]/, '')
# .downcase.scan(/\bthe\b/).length
# pp theSentence

for i in theSentence do
  i.gsub(/[-,]/, '')
  pp i
  if i == "the"
    theCount += 1
  elsif i == "the-"
    theCount += 1
  end
end
pp theCount
