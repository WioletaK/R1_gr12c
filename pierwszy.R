install.packages("devtools") #instalacja paczki
library("devtools") #zaladowanie zainstalowanej paczki

install.packages("httr")
install.packages("jsonlite")

library(httr)
library(jsonlite)

endpoint<-"https://api.openweathermap.org/data/2.5/weather?q=Lublin&units=metric&appid=ccd2c7f8b414cadf0c4383ce0a541dc2"
getWeather<-GET(endpoint)
weatherText<-content(getWeather,"text")
#View(weatherText)
weatherJson<-fromJSON(weatherText,flatten=TRUE)
#View(weatherJson)
weatherDF<-as.data.frame(weatherJson)
#View(weatherDF)