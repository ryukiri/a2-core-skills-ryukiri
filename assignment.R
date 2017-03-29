# a2-foundational-skills


# Set up and Defining variables -----------------------------------------------------------------

# Install and load the the `stringr` package, which has a variety of built in functions that make working with string variables easier.


# Create a numeric variable `my.age` that is equal to your age


# Create a variable `my.name` that is equal to your first name


# Using multiplication, create a variable `minutes.in.a.day` that is equal to the number of minutes in a day


# Using multiplication, create a variable `hours.in.a.year` that is the number of hours in a year


# Create a variable `more.minutes.than.hours` that is a boolean value (TRUE/FALSE)
# It should be TRUE if there are more minutes in a day than hours in a year, otherwise FALSE



# Working with functions ----------------------------------------------------------

# Write a function called `MakeIntroduction` that takes in two arguments: name, and age. 
# This function should return a string value that says "Hello, my name is {name}, and I'm {age} years old".


# Create a variable `my.intro` by passing your variables `my.name` and `my.age` into your `MakeIntroduction` function


# Create a variable `casual.intro` by substituting "Hello, my name is ", with "Hey, I'm" in your `my.intro` variable 


# Create a new variable `loud.intro`, which is your `my.intro` variable in all upper-case letters


# Create a new variable `quiet.intro`, which is your `my.intro` variable in all lower-case letters


# Create a new variable capitalized, which is your `my.intro` variable with each word capitalized 
# hint: use the stringr function `str_to_title`


# Using the `str_count` function, create a variable `occurrences` that stores the # of times the letter "e" appears in `my.intro`


# Write another function `Double` that takes in a variable and returns that variable times two


# Using your `Double` function, create a variable `minutes.in.two.days`, which is the number of minutes in two days


# Write another function `ThirdPower` that takes in a value and returns that value cubed


# Create a variable `twenty.seven`` by passing the number 3 to your `ThirdPower` function


# Vectors ----------------------------------------------------------------------

# Create a vector `movies` that contains the names of six movies you like


# Create a vector `top.three` that only contains the first three movies in the vector


# Using your vector and the paste method, create a vector `excited` that adds the phrase -
# " is a great movie!" to the end of each element in your movies vector


# Create a vector `without.four` that has your first three movies, and your 5th and 6th movies.


# Create a vector `numbers` that is the numbers 700 through 999


# Using the built in length function, create a variable `len` that is equal to the length of your vector `numbers`


# Using the `mean` function, create a variable `numbers.mean` that is the mean of your vector `numbers`


# Using the `median` function, create a variable `numbers.median` that is the mean of your vector `numbers`


# Create a vector `lower.numbers` that is the numbers 500:699


# Create a vector `all.numbers` that combines your `lower.numbers` and `numbers` vectors


# Dates ---------------------------------------------------------------------------- 

# Use the `as.Date()` function to create a variable `today` that represents today's date
# You can pass in a character string of the day you wrote this, or you can get the current date
# Hint: https://www.rdocumentation.org/packages/base/versions/3.3.2/topics/Sys.time


# Create a variable `summer.break` that represents the first day of Summer break (June 9, 2017). 
# Make sure to use the `as.Date` function again


# Create a variable `days.to.break` that is how many days until break (hint: subtract the dates!)


# Define a function called `MakeBirthdayIntro` that takes in three arguments: 
# a name, an age, and a character string for an upcoming birthday.
# This method should return a character string of the format:
#  "Hello, my name is {name} and I'm {age} years old. In {N} days I'll be {new.age}" 
# You should utilize your `MakeIntroduction()` function from Part 1!


# Create a variable `my.bday.intro` by calling your `MakeBirthdayIntro` function and passing in `my.name`, `my.age`, and your birthday.


# Challenge ------------------------------------------------------------------
# Write a function `RemoveDigits` that will remove all digits (i.e., 0 through 9) from all elements in a *vector of strings*. 


# Demonstrate that your approach is successful by passing a vector of courses to your function
# For example, RemoveDigits(c("INFO 201", "CSE 142"))

             