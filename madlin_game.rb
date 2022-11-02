puts('Enter first number')
num1 = gets.chomp.to_f
puts('Enter operator')
op = gets.chomp
puts('Enter second number')
num2 = gets.chomp.to_f

def solution(num1, num2, op)
  sol = 0
  if op == '+'
    sol = num1 + num2
  elsif op == '-'
   sol= num1 - num2

  elsif op == '*'
   sol = num1 * num2
  elsif op == '/'
    sol = num1 / num2
  else
    sol = 'Invalid operation'
  end
  return sol;
end

puts(solution(num1, num2, op))