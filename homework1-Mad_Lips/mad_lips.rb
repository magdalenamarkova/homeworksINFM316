
blanks = ['verb', 'adjective', 'adjective', 'noun']
answers = []

for blank in blanks 
if blank == 'adjective'
    prefix = "an"
else 
    prefix = "a"
end
    puts("Give me  " + prefix + " " + blank + ": ")
    user_input = gets.chomp()
    answers.push(user_input)
end

puts("I planned to " + answers[0] + " a " + answers[1] + " party for my " + answers[2] + " " + answers[3] + ".")
