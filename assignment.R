# a2-foundational-skills

# Set up and Defining variables -----------------------------------------------------------------

# Install and load the the `stringr` package, which has a variety of built in functions that make working with string variables easier.
install.packages("stringr")
library(stringr)

# Create a numeric variable `my.age` that is equal to your age
my.age <- 20 #years

# Create a variable `my.name` that is equal to your first name
my.name <- "Austin"

# Using multiplication, create a variable `minutes.in.a.day` that is equal to the number of minutes in a day
minutes.in.a.day <- 60*24

# Using multiplication, create a variable `hours.in.a.year` that is the number of hours in a year
hours.in.a.year <- 24*365

# Create a variable `more.minutes.than.hours` that is a boolean value (TRUE/FALSE)
# It should be TRUE if there are more minutes in a day than hours in a year, otherwise FALSE
more.minutes.than.hours <- minutes.in.a.day > hours.in.a.year

# Working with functions ----------------------------------------------------------

# Write a function called `MakeIntroduction` that takes in two arguments: name, and age. 
# This function should return a string value that says "Hello, my name is {name}, and I'm {age} years old".
MakeIntroduction <- function(name, age) {
  intro <- paste("Hello, my name is", name, ", and I'm", age, "years old.");
  return(intro)
}

# Create a variable `my.intro` by passing your variables `my.name` and `my.age` into your `MakeIntroduction` function
my.intro <- MakeIntroduction(my.name, my.age);

# Create a variable `casual.intro` by substituting "Hello, my name is ", with "Hey, I'm" in your `my.intro` variable 
casual.intro <- paste("Hey, I'm ", my.name, ", and I'm ", my.age, "years old. ");

# Create a new variable `loud.intro`, which is your `my.intro` variable in all upper-case letters
loud.intro <- toupper(my.intro)

# Create a new variable `quiet.intro`, which is your `my.intro` variable in all lower-case letters
quiet.intro <- tolower(my.intro)

# Create a new variable capitalized, which is your `my.intro` variable with each word capitalized 
# hint: use the stringr function `str_to_title`
capitalized <- str_to_title(my.intro)

# Using the `str_count` function, create a variable `occurrences` that stores the # of times the letter "e" appears in `my.intro`
occurrences <- str_count(my.intro, "e")

# Write another function `Double` that takes in a variable and returns that variable times two
Double <- function(x) {
  answer <- x*2;
  return (answer)
}

# Using your `Double` function, create a variable `minutes.in.two.days`, which is the number of minutes in two days
minutes.in.two.days <- Double(minutes.in.a.day)

# Write another function `ThirdPower` that takes in a value and returns that value cubed
ThirdPower <- function(x) {
  answer = x*x*x
  return (answer)
}

# Create a variable `twenty.seven`` by passing the number 3 to your `ThirdPower` function
twenty.seven <- ThirdPower(3)

# Vectors ----------------------------------------------------------------------

# Create a vector `movies` that contains the names of six movies you like
movies <- c('The Wind Rises', 'Totoro', 'Howls Moving Castle', 'Spirited Away', 'Castle in the Sky', 'The Valley of the Wind');

# Create a vector `top.three` that only contains the first three movies in the vector
top.three <- movies[1:3]

# Using your vector and the paste method, create a vector `excited` that adds the phrase -
# " is a great movie!" to the end of each element in your movies vector
excited <- paste(movies, " is a great movie!", sep="")

# Create a vector `without.four` that has your first three movies, and your 5th and 6th movies.
without.four = movies[c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE)]

# Create a vector `numbers` that is the numbers 700 through 999
numbers <- c(700:999)

# Using the built in length function, create a variable `len` that is equal to the length of your vector `numbers`
len <- lengths(numbers)

# Using the `mean` function, create a variable `numbers.mean` that is the mean of your vector `numbers`
numbers.mean <- mean(numbers)

# Using the `median` function, create a variable `numbers.median` that is the mean of your vector `numbers`
numbers.median <- median(numbers)

# Create a vector `lower.numbers` that is the numbers 500:699
lower.numbers <- c(500:69)

# Create a vector `all.numbers` that combines your `lower.numbers` and `numbers` vectors
all.numbers <- lower.numbers + numbers

# Dates ---------------------------------------------------------------------------- 

# Use the `as.Date()` function to create a variable `today` that represents today's date
# You can pass in a character string of the day you wrote this, or you can get the current date
# Hint: https://www.rdocumentation.org/packages/base/versions/3.3.2/topics/Sys.time
today <- as.Date(Sys.Date(), "%m/%d/%y")

# Create a variable `summer.break` that represents the first day of Summer break (June 9, 2017). 
# Make sure to use the `as.Date` function again
summer.break <- as.Date("2017.06.09", format = "%Y.%m.%d")

# Create a variable `days.to.break` that is how many days until break (hint: subtract the dates!)
days.to.break <- summer.break - today

# Define a function called `MakeBirthdayIntro` that takes in three arguments: 
# a name, an age, and a character string for an upcoming birthday.
# This method should return a character string of the format:
#  "Hello, my name is {name} and I'm {age} years old. In {N} days I'll be {new.age}" 
# You should utilize your `MakeIntroduction()` function from Part 1!
MakeBirthdayIntro <- function(name, age, birthday) {
  intro <- paste(MakeIntroduction(name, age), "In", as.Date(birthday, format = "%Y.%m.%d")-today, "days I'll be", age+1);
  return(intro)
}

# Create a variable `my.bday.intro` by calling your `MakeBirthdayIntro` function and passing in `my.name`, `my.age`, and your birthday.
my.bday.intro <- MakeBirthdayIntro(my.name, my.age, as.Date("2017.12.23", format = "%Y.%m.%d"))

# Challenge ------------------------------------------------------------------
# Write a function `RemoveDigits` that will remove all digits (i.e., 0 through 9) from all elements in a *vector of strings*. 
RemoveDigits <- function(c2) {
  answer = gsub('[[:digit:]]+', "", c2)
  return (answer)
}

# Demonstrate that your approach is successful by passing a vector of courses to your function
# For example, RemoveDigits(c("INFO 201", "CSE 142"))
RemoveDigits(c("INFO 201", "CSE 142"))
