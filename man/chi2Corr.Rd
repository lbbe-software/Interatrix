\name{chi2Corr}
\alias{chi2Corr}

\title{Searches for parasite interactions taking risk factors into account.}

\description{This function implements a method to correct for shared risk factors in the search for interactions.
It provides the observed chi-square value, a measure of association between two parasites, and simulates bootstrapped data taking risk factors into account.
}

\usage{
chi2Corr(formula, data.obs, namepara1, namepara2, nsimu)}

\arguments{
  \item{formula}{a string of characters indicating a symbolic description of the model of shared risk factors to be fitted without any response variable}
  \item{data.obs}{the name of the data set to be used}
  \item{namepara1}{the name of the column giving the status to the first parasite}
  \item{namepara2}{the name of the column giving the status to the second parasite}
  \item{nsimu}{an integer indicating the number of repetitions for the bootstrap simulation}
}

\value{
The value returned is a list containing:
  \item{\code{formula}}{the model fitted without any response variable}
  \item{\code{time}}{duration in seconds of the simulations}
  \item{\code{chi2.corr.obs}}{the Pearson's chi2 statistic calculated on \code{data.obs}}
  \item{\code{dispcoeff}}{the estimated coefficient of over- (or under-) dispersion, defined as the mean of the bootstrapped values of the corrected chi-square.}
  \item{\code{pval1}}{p-value of the corrected chi-square test under the null hypothesis of independence of the two parasites. 
    \code{pval1} was estimated assuming that the corrected chi-square is proportional to a chi-square with one degree of freedom.}
  \item{\code{pval2}}{p-value of the corrected chi-square test under the null hypothesis of independence of the two parasites.
    \code{pval2} was given by the proportion of bootstrapped corrected chi-squares smaller than the observed value (\code{chi2.corr.obs}).}
  \item{\code{tab.th}}{expected frequencies, ie. the contingency table calculated on the theoretical (bootstrapped) data}       
  \item{\code{tab.obs}}{observed frequencies, ie. the contingency table calculated on \code{data.obs}}
  \item{\code{chi2.corr.sim}}{a vector containing the \code{nsimu} Pearson's chi2 statistics calculated on simulated data.}

The distribution of the bootstrapped corrected chi-squares (an histogram) is also provided.
}

\note{\code{pval2} is better than \code{pval1} but requires running enough simulations, wich may be long in some cases. \code{pval1} allows working with smaller numbers of simualtions when simulation times are too long.
}

\references{
True versus False Parasite Interactions: A Robust Method to Take Risk Factors into Account and Its Application to Feline Viruses. Hellard E., Pontier D., Sauvage F., Poulet H. and Fouchet D. (2012). PLoS ONE 7(1): e29618. doi:10.1371/journal.pone.0029618.
}

\examples{
\dontrun{
  library(Interatrix)
  data(dataInteratrix)
  res1 <- chi2Corr("F1+F2*F3+F4", dataInteratrix, "Parasite1", "Parasite2", 500)
}
}

\keyword{hplot}
\keyword{print}
\keyword{htest}
\keyword{interface}

