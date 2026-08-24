# Introduction to R
# for ECON 731 students
# 2026-08-24
# jungmee.park@wichita.edu

# simple arithmetic
3+5

22/7

# Everything that exists in R is an objects: from simple numerical values, 
# to strings, to more complex objects like vectors, matrices, and lists. 
# Even expressions and functions are objects in R.
# 
# However, to do useful and interesting things, we need to name objects. 
# To do so, we need to give a name followed by the assignment operator <-, 
# and the object we want to be named:

area_hectares <- 1.0

# can you also type 
area_hectares = 2.5


# In RStudio, typing Alt + - (push Alt at the same time as the - key) will write 
# <- in a single keystroke in a PC, while typing Option + - (push Option at the 
#                           same time as the - key) does the same in a Mac.
a <- 3
b <- sqrt(a)
b

# subsetting
possessions <- c("car", "bicycle", "radio", "television", "mobile_phone")
possessions[possessions == "car" | possessions == "bicycle"] # returns both car and bicycle

possessions %in% c("car", "bicycle")

possessions[possessions %in% c("car", "bicycle", "motorcycle", "truck", "boat", "bus")]


# missing data 
rooms <- c(2, 1, 1, NA, 7)
mean(rooms)

mean(rooms, na.rm = TRUE)

## Extract those elements which are not missing values.
## The ! character is also called the NOT operator
rooms[!is.na(rooms)]

## Count the number of missing values.
## The output of is.na() is a logical vector (TRUE/FALSE equivalent to 1/0) so the sum() function here is effectively counting
sum(is.na(rooms))

# starting with Data
library(readr)
interviews <- read_csv("SAFI_clean.csv")
View(SAFI_clean)

data <- read.csv("https://raw.githubusercontent.com/jmp243/Learn_R/refs/heads/main/fake_program_data.csv")
