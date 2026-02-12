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
