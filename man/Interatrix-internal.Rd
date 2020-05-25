\name{Interatrix-internal}
\alias{list2ascii}
\alias{obsdata_chi2corr}
\alias{chi2corrboot}
\alias{simudata_chi2corr}
\alias{SensTransMatrix}
\alias{EstimParam}
\alias{ModelClass}
\alias{calcInfectProba}
\alias{obsdata_chi2corrage}
\alias{simudata_chi2corrage}

\title{Internal functions for the Interatrix package.}

\description{Internal functions for the Interatrix package.}

\details{
list2ascii(x,file = paste(deparse(substitute(x)), ".txt", sep = ""))\cr
\cr
## internal functions for chi2Corr() and chi2CorrGUI()\cr
obsdata_chi2corr(formula, data, name1, name2)\cr
chi2corrboot(data, formula, sero1, sero2)\cr
simudata_chi2corr(formula, data, name1, name2, nbsimu, pvir1, pvir2, chi2corrobs)\cr
\cr
## internal functions for chi2CorrAge() and chi2CorrAgeGUI()\cr
SensTransMatrix(para, listmodel, rate, agenum, a)\cr
EstimParam(paranum, rate, listmodel, agenum, v0, tol = 0.00000001, maxit = 50000, a, mort)\cr
ModelClass(para, formula, data, agemax, nameage)\cr
calcInfectProba(data, formula, namepara1, namepara2, nameage, w1, w2, mort, a, v0para1, v0para2)\cr
obsdata_chi2corrage(formula, data, name1, name2, nameage, w1, w2, mort, a, v0para1, v0para2)\cr
simudata_chi2corrage(formula, data, name1, name2, nameage, w1, w2, mort, a, v0para1, v0para2, matprobainfect)\cr
}


\keyword{utilities}