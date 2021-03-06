% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logitModell.R
\name{plot.logitMod}
\alias{plot.logitMod}
\title{Plotting method for "logitMod" objects}
\usage{
\method{plot}{logitMod}(x, ...)
}
\arguments{
\item{x}{an object of class "logitMod"}

\item{...}{unused parameter, methods are required to have same
arguments as their generic functions}
}
\value{
equivalent plots to those of the built in binary logistic regression
}
\description{
Plotting method for objects of class "logitMod"
}
\examples{
testData <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")[1:100,]
testData$rank <- factor(testData$rank)
testModell <- as.formula("admit ~ gre + gpa + rank")
testModelFrame <- model.frame(admit ~ gre + gpa + rank, testData)
logm <- logitMod(formula = admit ~ gre + gpa + rank, data = testData)
plot(logm)
}
