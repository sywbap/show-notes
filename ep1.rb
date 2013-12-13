# What is programming?
#   operating a machine or computer with a set of encoded
#   instructions in order to automate a task
# 
# 
# Programming Languages
#   Provide higher level vocabulary for instructing computers
#   than just 1's and 0's so that humans can more easily
#   write and understand programs
# 
#   ex:
      x = 5
      m = 6
      b = 2
# 
     puts "y = " + (m * x + b).to_s
#     => "y = 17"
#

Variables
  references used to store and retrieve pieces of data 
  held in memory

  my_name  = "speakingcode"
  my_age   = 9000
  my_job   = "programmer"

  person = {
    name  => my_name
    age   => my_age
    job   => my_job
  }

  person['age']
  => 9000

  person['job']
  => "programmer"

Types

  determine the possible values, valid operations,
  and meaning for pieces of data and how it is stored
  by the computer
  
  
  Numbers (integers, floats)

  num_of_units  = 45
  gross         = 58379.07

  gross + 84370.82
  => 142749.89
,
  num_of_units - 13
  => 32

  gross > 90000
  => false

  num_of_units < gross
  => true

  Strings
   
  name = "John Doe"
  description = "No one really knows who he is, do they?"

  description.include? "really"
  => true

  name + " is my hero!"
  => "John Doe is my hero!"

  name.sub "John", "Jane"
  => "Jane Doe"

  "Awesome Sauce".downcase
  => "awesome sauce"

  Boolean
  
  answer = 18 > 2
  => true

  connection_enabled = false
  => false

  Arrays

  scores = [12, 17, 15]
  
  scores.push 14
  => [12, 17, 15, 14]

  scores[0]
  => 12

  scores[2] + 11
  => 26

  names = ["John", "Jane", "Doe"]
  
  names[0].downcase
  => "john"

  names[2].sub "D", "J"
  => "Joe"

Functions
  units of code that perform operations and provide
  the behavior of a program. take input, do something
  with it and return result


  chop "word"
  => "wor"

  def multiply a, b
    a * b
  end

  multiply 23, 10
  => 2300

  def exponent a, b
    ans = 1
    b.times { ans = multiply(ans, a) }
    return ans
  end
                                                                                      
  def area_of_circle r
    multiply(3.141592653589793, exponent(r, 2))
  end

  def length_of_word word
    count = 0
    word.chars.each { count = count + 1 }
    count
  end

  def longer_word word1, word2
    if (length_of_word word1) > (length_of_word word2)
      return word1
    else
      return word2
    end
  end



Expressions
  syntax that is evaluated to produce a value,
  similar to mathemetical expression
  
  #literal values
  
  1024
  => 1024

  3 + 3
  => 6
  
  "hello"
  => "hello"

  15 > 12
  => false

  #function calls that return values are also expressions

  longer_word "hello", "goodbye"
  => "goodbye"

  (area_of_circle 5) / 2


Statements
  smallest standalone element of a language
  a = 3
  b = 9 * 6

  #some languages require syntax to mark the end of statements
  #but they are typically optional in ruby...
  
  a  = 3;
  b  = 9 * 6;
  
  45;
  
  5 + 11;
  
  name = "speakingcode";
  greeting = "hello, " + name;

Compound Statements
  may contain substatements and multiple components

  Loops
  repeat until a certain condition changes

  while (x < 1000) do
    current_job = jobs[x]
    current_job.start
    x = x + 1
  end

  #for-loops in ruby look slightly different than typical
  #syntax found in other langauges

  for i in (0..100) do
    current_job = jobs[i]
    current_job.start
  end

  #javascript
  for(var i = 0; i <= 100; i++)
  {
    var current_job = jobs[x];
    current_job.start();
  }

  If Statements

  if age < 18
    puts "You are too young!"
  end

  if (speed == 0)
    puts "You're not moving!"
  elsif speed < 30
    puts "Speed up a little bit."
  else
    if speed_limit < speed
      puts "Slow down, you're speeding!"
    else
      puts "Alright, now we're cruising!"
    end
  end
