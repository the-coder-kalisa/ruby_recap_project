shows = %w[Teams Animals]
puts 'Welcome to the guessing game!'
puts 'What would you like to guess?'
selected = ''
for value in shows do
  puts((shows.index(value) + 1).to_s + value)
end
selected = gets.chomp
choosed = Array[]
case selected.to_i
when 1
  choosed = ['Arsenal', 'Chelsea', 'Liverpool', 'Manchester United', 'Manchester City', 'Tottenham Hotspur',
             'Everton', 'West Ham United', 'Leicester City', 'Aston Villa', 'Newcastle United', 'Crystal Palace', 'Southampton', 'Wolverhampton Wanderers', 'Burnley', 'Brighton & Hove Albion', 'Sheffield United', 'Norwich City', 'Watford', 'Bournemouth']
when 2
  choosed = Array['Lion', 'Tiger', 'Elephat', 'Person', 'Chicken', 'Hen', 'Pogba']
end
choice = rand(choosed.length)
placeHolder = ''
i = 0
while i < choosed[choice].length
  placeHolder+= "_ "
  i += 1
end
puts placeHolder;  
puts "Enter your choicie"
ch = gets.chomp()
