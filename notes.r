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

