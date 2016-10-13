# Exercise 6: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
female.names

# Create a vector `year` as the year column of the dataset
year <- female.names[['year']]

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- as.vector(female.names[['name']])

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names[['prop']]

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[year == 2013]

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[year == 2013]

# What was the most popular female name in 2013?
most.popular <- names.2013[which.max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
  year.tmp <- year[year == my.year]
  name.year <- name[year == my.year]
  prop.year <- name[year == my.year]
  most.popular.my.year <- name.year[prop.year == max(prop.year[year.tmp == my.year])]
  return(paste("The most popular name in", my.year, "was", most.popular.my.year))
}

# What was the most popular female name in 1994?
most.popular.1994 <- MostPopular(1994)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(pop.name, pop.year) {
  names.tmp <- name[year == pop.year]
  prop.tmp <- prop[year == pop.year]
  prop.year <- round(prop.tmp[names.tmp == pop.name], 4) * 100
  return(paste(pop.name, "was", prop.year, "percent of all names in", pop.year))
}
# How popular was the name 'Laura' in 1995
HowPopular('Laura', 1995)
