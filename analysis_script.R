# Install necessary packages
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)
library(car)
library(lsr)
library(corrplot)

# load data

results.data <- read.csv("data/sagar.csv", header=T, colClasses = c("numeric", "factor", "factor", "factor", "factor"))
names(results.data) <- c("acc", "POS", "per", "prob", "end") # rename the columns to be more manageable
str(results.data) # gives a nice summary 

# build the model

model.1 <- aov( acc ~ POS, results.data )  
summary( model.1 )  

model.2 <- aov( acc ~ POS * prob, results.data )  
summary( model.2 )  

model.3 <- aov( acc ~ POS * prob * per, results.data )  
summary( model.3 ) 

model.4 <- aov( acc ~ POS * prob * per * end, results.data )  
summary( model.4 ) 

# check the effect size 

etaSquared( model.4 )

# check the assumptions
resid <- residuals( model.4 )  # pull the residuals
hist( resid )    
qqnorm( resid )   
shapiro.test( resid )

