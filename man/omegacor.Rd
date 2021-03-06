\name{omegacor}
\alias{omegacor}
\alias{sigmacor}
\alias{unilogcor}
\alias{unilogcov}
\alias{omegacov}
\alias{sigmacov}
\title{
Extract NONMEM Covariance or Correlation Matrices
}
\description{
These functions acquire omega or sigma covariance matrix elements for a NONMEM 7 run
and return them as a matrix or calculate the corresponding correlation matrix.  
Arguments \code{run} and \code{project} are used to calculate
the .ext file name, which is read into memory as a pxml object, and then 
converted to unilog format.  Directly supplying extfile, pxml, or unilog renders
all previous arguments moot. Not vectorized: run should be scalar.
}
\usage{
unilogcov(
	pattern,
	run=0,
	project=getwd(),
	tool='nm7',
	extfile=file.path(project,run,paste(run,'ext',sep='.')),
	pxml=as.pxml.ext(extfile),
	unilog=as.unilog.pxml(x=pxml,run=run,tool=tool,...),
	...
)
unilogcor(
	pattern,
	run=0,
	project=getwd(),
	tool='nm7',
	extfile=file.path(project,run,paste(run,'ext',sep='.')),
	pxml=as.pxml.ext(extfile),
	unilog=as.unilog.pxml(x=pxml,run=run,tool=tool,...),
	...
)
omegacov(run,project=getwd(),...)
sigmacov(run,project=getwd(),...)
omegacor(run,project=getwd(),...)
sigmacor(run,project=getwd(),...)


}

\arguments{
  \item{pattern}{a pattern to seek in the parameter column of a unilog (anchored at the start of each string)}
  \item{run}{name (number) of a run}
  \item{project}{project directory (parent of run directory)}
  \item{tool}{largely irrelevant; only 'nm7' is supported}
  \item{extfile}{name of .ext file, e.g. run.ext}
  \item{pxml}{internal xml format for parameter data}
  \item{unilog}{unilog format; as returned invisibly by \code{rlog}}
  \item{\dots}{passed to unilogcor, else unused}
}
\value{
correlation matrix
}
\references{\url{http://metrumrg.googlecode.com}}
\author{Tim Bergsma}
\seealso{
	\itemize{
		\item \code{\link{cov2cor}}
		\item \code{\link{rlog}}
	}
}
\keyword{manip}

