# This is essentially a common algorithm or problem that is exposed to jr. 
# developers on interviews. The idea is that given a range of numbers each
# must be checked for certain patterns; if the number is a multiple of 3 then we
# must print out 'Fizz' instead of the actual number, if the number is a 
# multiple of 5 then we print out 'Buzz', if the number is multiple of both 3 
# and 5 then we print our 'FizzBuzz', finally, if none of those conditions are 
# met we simply print out the actual number.
#
# For this particular demo requested certain conditions were required:
#
# - 1 if
# - You can't use else, else if or ternary
# - Unit tests
# - Feel free to apply your S.O.L.I.D knowledge (highly appreciated)
# - You can write the challenge in any language you want.
# 
# So given those conditions I went a little further and did not use any if
# conditional. Sure, creating data structures to solve this is dumb and 
# inefficient but so is trying to resolve this problem without conditionals.
# Besides, there was no mention on performance :)


# Outputs either the number or the foobar corresponding value.
#
# @param [Integer] to The amount of tries to print out. Defaults to 10.
# @return [String] The last printed out value.
def output_data(to: 10)
  (1..to).each do |n|
    bingo = foo_bar(n)
    puts bingo
  end
end

# Checks whether a number is within the pattern of the FizzBuzz (FooBar in this
# case) problem and returns the corresponding value.
#
# @param [Interger] n The actual number to check.
# @return [String] Either the number or one of the FooBar values.
def foo_bar(n)
  foo = (n % 3).to_f
  bar = (n % 5).to_f
  foo_bar = (foo + bar).to_f
  num = 0.9
  bingo = { 
    'FooBar' => "#{foo_bar}",
    'Bar' => "#{bar}",
    'Foo' => "#{foo}",
    "#{n}" => "#{num}"
  }.select {|k,v| v.to_f < 1 }.keys.first
end

if ARGV.include?('run')
  output_data(to: 100)
else
  puts "\nIf you want to run this script use the argument 'run'. Bye.\n\n"
end
