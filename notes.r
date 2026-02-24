#Notes from January 28
library(DigitalMethodsData)
data(BostonWomenVoters)
nrow(BostonWomenVoters)
rows <- 10702
rows > 100
#notes from February 2 (zoom class)
library(DigitalMethodsData)
data(BostonWomenVoters)
if (BostonWomenVoters$Occupation[4] == "Housewife") {
    print ("this is a housewife")
}
i <- 1
while (i <= nrow(BostonWomenVoters)) {
    if (BostonWomenVoters$Occupation[4] == "Housewife")
    print (i)
i <- i +1
}

i <- i +1
if (BostonWomenVoters$Occupation[4] == "Housewife") {
  print("This woman is a housewife")
} else if (BostonWomenVoters$Occupation[4] == "Stenographer") {
  print("this woman is a stenographer")
} else {
  print("this woman is neither")
}
for (i in nrow(BostonWomenVoters [1]))



journals <- data.frame(
  title = c("AHR", 
            "JAH",
            "WMQ",
            "AHR",
            "JSH"),
  month = c("January", "March", "April", "July", "October"),
  year = c(1920, 1920, 1920, 1921, 1921)
)
journal_titles <- c("AHR", "JAH","WMQ", "AHR", "JSH")
journals$title[1]
journals$month[1]
journals$year[1]
paste(journals$title[1],journals$month[1],journals$year[1])
paste0(journals$title[1],journals$month[1],journals$year[1])
paste(journals$title[1],journals$month[1],journals$year[1], ".txt", sep = "-")


##saving this from worksheet 3 while I attempt another way to solve issues
data(gayguides)
count_by_state <- function(st_abbrev) {
  data(gayguides)
  counter <- 0
  for (i in 1:nrow(gayguides)) {
    if (gayguides$state[i] == st_abbrev) {
      counter <- counter + 1
    }
  }
}
message <- paste("There are", counter, "locations in", st_abbrev)

return(message)
count_by_state("SC")

## another attempt. I keep getting error codes: attempt to use zero-length variable
or count not found.
```data(gayguides)
count_by_state <- function(st_abbrev) {
  data(gayguides)
  count <- 0

  state_column <- as.character(gayguides$state)

  for (i in 1:length(state_column)) {
    if (!is.na(state_column[i]) && trimws(state_column[i]) == st_abbrev) {
      
      count <- count + 1
    }
  }
}
return(paste("There are", count, "locations in", st_abbrev))


count_by_state("CA")
## note for error sheet: document why I used !is.na and trimws() per google. these did seemed to narrow down my problems. 
## also note that i had count and counter, and state and State seemed to be the last mistake preventing it workng.

#work from tidying data chapter
df <- tribble(
  ~id, ~measurement, ~ value,
  "A",     "bp1",     100,
  "B",      "bp1",    140,
  "B",      "bp2",    115,
  "A",      "bp2",    120,
  "A",      "bp3",    105
  )

df |>
  pivot_wider( # nolint
    names_from = measurement # nolint
    values_from = value
)
  library(tidyverse)
  library(DigitalMethodsData)
data(gayguides)

s.gayguides <- gayguides %>% select(title,Year)

rec_data <- read.csv("https://raw.githubusercontent.com/regan008/DigitalMethodsData/main/raw/Recreation-Expenditures.csv")

#which cities in SC reported recreation data?
#Create a new dataset that shows only the city name and total expendentures.
#Sorted by expenditure (highest to lowest). Save it to a variable.

rec_data_cities_SC<- rec_data %>% filter(state == "SC")

rec_data_name_expenses <- rec_data %>% select(city, total_expenditures)

rec_data_expenditures <- rec_data %>% arrange(desc(total_expenditures))

rec_data_spending_per_cap <- rec_data %>% mutate(total_expenditures/population)

rec_data_pop_spenders <- rec_data %>% filter()