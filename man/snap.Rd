\name{snap}
\alias{snap}
\title{Coerce Values to Nearest of Candidates}
\description{For each value in a numeric vector, return the closest match from
a vector of candidate values.}
\usage{
snap(x, rule = 1, left = TRUE, ...)
}
\arguments{
  \item{x}{numeric}
  \item{rule}{a vector of (finite numeric) candidates, or a single value giving candidate interval on the real number line}
  \item{left}{whether to return the lesser of two equidistant candidates}
  \item{\dots}{ignored}
}
\details{If \code{rule} is scalar, it must be positive; a rule will be constructed
as a sequence of rule-spaced values that includes zero and includes values at least as 
extreme as the extremes of \code{x}.  In some sense, this function is the complement
to \code{cut}: whereas in \code{cut} one specifies the "breaks", with \code{snap} one
specifies a set of "attractors" (breaks are the implied midpoints); both functions map their
primary argument to a (possibly) smaller set of values.}
\value{numeric}
\note{If length of x is zero, it is returned unmodified. If length of rule is zero, value is all NA.}
\references{\url{http://metrumrg.googlecode.com}}
\author{
Tim Bergsma
}
\seealso{
	\itemize{
		\item \code{\link{findInterval}}
		\item \code{\link{cut}}
	}
}
\examples{
snap(c(0.0, 1.0, 1.2, 2.0, 2.9, 3))
snap(-10:10, 0.3)
xyplot(conc~Time,data=Theoph,groups=Subject)
times <- c(0,.25,.5,1,2,4,5,7,9,12,24)
xyplot(conc~snap(Time,times),data=Theoph,groups=Subject)
snap(c(3,NA,5), c(2,4,6))
snap(c(3,NA,5), numeric(0))
}
\keyword{ manip }

