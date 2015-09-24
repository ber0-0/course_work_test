getwd()

install.packages("gapminder")
library(gapminder)
str(gapminder)
head(gapminder) # first 10 sample data
tail(gapminder) # last 10 sample data 
gapminder[sample(nrow(gapminder),10 ),] # 10 random sample 
subset(gapminder, subset = country == "Taiwan") # specific category from data 
gapminder[101:111, ] # specificly called data 
plot(lifeExp ~ year, gapminder)
plot(lifeExp ~ gdpPercap, gapminder)
hist(gapminder$lifeExp)
head(gapminder$pop)


install.packages("ggplot2")
library(ggplot2)

p <- ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) # initializes

p + geom_point() # p + layer(geom = 'point')

ggplot(gapminder, aes(x = log10(gdpPercap), y = lifeExp)) + geom_point()
# a fast way to input log10 

p + geom_point() + scale_x_log10() # a better way to transform input

p + geom_point(aes(color = continent)) # differentiate continent by colors 

# compile r-markdown file from R-script
# #'title: "R_markdown_note"
# #'   output: html_document
# R-script itself will only read it as comment, but for rmarkdown will read


#```{r setup, include=FALSE}  ##{r} the language used in the chuck; 
             ##'include=FALSE' the result will be invisible
#knitr::opts_chunk$set(echo = TRUE)
#```

