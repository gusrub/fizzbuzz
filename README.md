# FizzBuzz

A simple approach to solve the FizzBuzz problem.
----

This is essentially a common algorithm or problem that is exposed to jr. developers on interviews. The idea is that given a range of numbers each must be checked for certain patterns; if the number is a multiple of 3 then we must print out `Fizz` instead of the actual number, if the number is a  multiple of 5 then we print out `Buzz`, if the number is multiple of both 3 and 5 then we print our `FizzBuzz`, finally, if none of those conditions are met we simply print out the actual number.

For this particular demo certain conditions were requested:

 - 1 if
 - You can't use else, else if or ternary
 - Unit tests
 - Feel free to apply your S.O.L.I.D knowledge (highly appreciated)
 - You can write the challenge in any language you want.

So given those conditions I went a little further and did not use any if conditional. Sure, creating data structures to solve this is dumb and inefficient but so is trying to resolve this problem without conditionals. Besides, there was no mention on performance :)

This is written in Ruby of course. No need to create classes or modules since that would be overkill IMO. Also, the fact that the actual method that does the processing is extracted into its own goes of to show the purpose of responsibility of each element in code which also brings in consequence testability to our code.

## Running the script

```
ruby foobar.rb run
```

## Running the tests

```
ruby test.rb
```

_That's all folks!_

