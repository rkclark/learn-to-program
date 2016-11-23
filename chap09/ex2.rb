numerals = [
  ["M", 1000],
  ["D", 500],
  ["C", 100],
  ["L", 50],
  ["X", 10],
  ["V", 5],
  ["I", 1]
]

def roman(num,numerals)
  number_string = ""
  numerals.each do
    |numeral|
    n = num / numeral[1]
    symbols = numeral[0]*(n)
    number_string += symbols
    num -= (n*numeral[1])
  end
  number_string
end

puts "Enter number to convert to roman numerals"
number = gets.chomp.to_i
puts "Your number is: " + roman(number,numerals)
