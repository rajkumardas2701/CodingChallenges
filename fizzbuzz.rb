# As described here, https://www.hackerrank.com/challenges/fizzbuzz/problem?h_r=internal-search
for i in 1..100
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end