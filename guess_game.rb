shows = Array['Teams', 'Animals', 'Books', 'Students', 'Players']
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
  choosed = Array['Arsenal', 'Chelsea', 'Liverpool', 'Manchester United', 'Manchester City', 'Tottenham Hotspur',
                  'Everton', 'West Ham United', 'Leicester City', 'Aston Villa', 'Newcastle United', 'Crystal Palace', 'Southampton', 'Wolverhampton Wanderers', 'Burnley', 'Brighton & Hove Albion', 'Sheffield United', 'Norwich City', 'Watford', 'Bournemouth']
when 2
  choosed = Array['Lion', 'Tiger', 'Elephant', 'Human Being', 'Chicken', 'Hen', 'Horse', 'Leopard', 'Ostrish']
when 3
  choosed = Array['Davinch', 'Steven in forest', 'Hiring the mist', 'Inside']
when 4
  choosed = Array['Emmy', 'Charles', 'Gaks', 'Pogba', 'Bellamy']
when 5
  choosed = Array['Christiano', 'Messi', '']
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
puts 'You have got ' + guess_limit.to_s + ' chances'
while guess != choosed[choice] && !out_of_choices
  if guess_count < guess_limit
    if guess_count >= 1
      puts 'Try again Enter guess: '
    else
      puts 'Enter guess'
    end
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
