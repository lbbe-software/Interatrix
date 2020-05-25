\name{chi2CorrAge}
\alias{chi2CorrAge}

\title{Searches for parasite interactions taking the cumulative effect of age and other risk factors into account.}

\description{This function implements a method to correct for the cumulative effect of age and for other potentially confounding risk factors in the search for interactions.
It provides the observed chi-square value, a measure of the association between two parasites, and simulates bootstrapped data taking risk factors into account.
}

\usage{chi2CorrAge(formula, data.obs, namepara1, namepara2, nameage, w1, w2, mort, a, 
nsimu, nbcore = 3)}

\arguments{
  \item{formula}{a string of characters indicating a symbolic description of the model of shared risk factors (including age) to be fitted without any response variable}
  \item{data.obs}{the name of the data set to be used}
  \item{namepara1}{the name of the column giving the status to the first parasite}
  \item{namepara2}{the name of the column giving the status to the second parasite}
  
  
  \item{nameage}{the column name of the age classes}
  \item{w1}{a real number between 0 and 1 indicating the antibodies' disappearance rate of the first studied parasite}
  \item{w2}{a real number between 0 and 1 indicating the antibodies' disappearance rate of the second studied parasite}
  \item{mort}{a vector of real numbers between 0 and 1 giving the mortality rates of all age classes}
  \item{a}{a vector of integers giving the bounds of the age classes}
  \item{nsimu}{an integer indicating the number of repetitions for the bootstrap simulation}
  \item{nbcore}{an integer indicating the number of cores available on the computer to set up a parallel calculation}
}

\value{
The value returned is a list containing:
  \item{\code{formula}}{the model fitted without any response variable}
  \item{\code{time}}{duration in seconds of the simulations}
  \item{\code{nbcore}}{the number of cores used for parallel simulations}
  \item{\code{chi2.corr.obs}}{the Pearson's chi2 statistic calculated on \code{data.obs}}
  \item{\code{pval}}{p-value of the corrected chi-square test under the null hypothesis of independence of the two parasites.
    \code{pval} was given by the proportion of bootstrapped corrected chi-squares smaller than the observed value (\code{chi2.corr.obs}).}
  \item{\code{tab.th}}{expected frequencies, ie. the contingency table calculated on the theoretical (bootstrapped) data}       
  \item{\code{tab.obs}}{observed frequencies, ie. the contingency table calculated on \code{data.obs}}
  \item{\code{chi2.corr.sim}}{a vector containing the \code{nsimu} Pearson's chi2 statistics calculated on simulated data.}
    
The distribution of the bootstrapped corrected chi-squares (an histogram) is also provided.
}

\references{
Unknown age in health disorders: a method to account for its cumulative effect and an application to feline viruses interactions. Hellard E., Pontier D., Siberchicot A., Sauvage F. and Fouchet D. (2015). Epidemics 11: 48-55. doi:10.1016/j.epidem.2015.02.004.
}


\examples{
\dontrun{
  library(Interatrix)
  data(dataInteratrix)
  res2 <- chi2CorrAge("F1+F2+AGE", dataInteratrix, "Parasite1", "Parasite2", "AGE", w1 = 0, 
    w2 = 0, mort = c(0.2, 0.2, 0.2), a = c(0, 1, 2, 10), nsimu = 500, nbcore = 2)
}
}

\keyword{hplot}
\keyword{print}
\keyword{htest}
\keyword{interface}

