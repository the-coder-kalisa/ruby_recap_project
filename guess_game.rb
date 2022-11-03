shows = %w[Teams Animals]
puts '============WELCOME================'
puts 'What would you like to guess?'
selected = ''
for value in shows do
  puts((shows.index(value) + 1).to_s + '. ' + value)
end
selected = gets.chomp
choosed = Array[]
case selected.to_i
when 1
  choosed = ['Arsenal', 'Chelsea', 'Liverpool', 'Manchester United', 'Manchester City', 'Tottenham Hotspur',
             'Everton', 'West Ham United', 'Leicester City', 'Aston Villa', 'Newcastle United', 'Crystal Palace', 'Southampton', 'Wolverhampton Wanderers', 'Burnley', 'Brighton & Hove Albion', 'Sheffield United', 'Norwich City', 'Watford', 'Bournemouth']
when 2
  choosed = Array['Lion', 'Tiger', 'Elephant', 'Human Being', 'Chicken', 'Hen', 'Horse', 'Leopard', 'Ostrish']
else
  exit
end
choice = rand(choosed.length)
placeHolder = ''
i = 0
while i < choosed[choice].length
  placeHolder += '_ '
  i += 1
end
guess = ''
guess_count = 0
guess_limit = 3
out_of_choices = false
puts placeHolder
while guess != choosed[choice] && !out_of_choices
  if guess_count < guess_limit
    puts 'Enter guess: '
    guess = gets.chomp
    guess_count += 1
  else
    out_of_choices = true
  end
end
if out_of_choices
  puts 'You lost'
else
  puts 'You won'
end
