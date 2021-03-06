\name{AgEdge-class}
\docType{class}
\alias{AgEdge-class}
\alias{AgEdge}
\alias{AgEdge<-}
\alias{splines}
\alias{sp}
\alias{ep}
\alias{getSpline}
\alias{numSplines}
\alias{head}
\alias{tail}
\alias{arrowsize}
\alias{lines,AgEdge-method}
\alias{show,AgEdge-method}
\alias{arrowsize,AgEdge-method}
\alias{color,AgEdge-method}
\alias{ep,AgEdge-method}
\alias{getSpline,AgEdge-method}
\alias{head,AgEdge-method}
\alias{numSplines,AgEdge-method}
\alias{sp,AgEdge-method}
\alias{splines,AgEdge-method}
\alias{tail,AgEdge-method}
\alias{txtLabel,AgEdge-method}
\alias{txtLabel}
\alias{arrowhead,AgEdge-method}
\alias{arrowhead}
\alias{arrowtail,AgEdge-method}
\alias{arrowtail}
\title{Class "AgEdge": A class to describe an edge for a Ragraph object}
\description{  This class is used to represent edges for the
  \code{Ragraph} class.  One can retrieve various pieces of information
  as well as draw them.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("AgEdge", ...)}.
}
\section{Slots}{
  \describe{

    \item{\code{arrowhead}:}{Object of class \code{"character"} The
      style of arrowhead for this edge.}

    \item{\code{arrowsize}:}{Object of class \code{"character"} A scale
      factor for the length of the arrow heads & tails}
    
    \item{\code{arrowtail}:}{Object of class \code{"character"} The
      style of arrowtail for this edge.}
    
    \item{\code{color}:}{Object of class \code{"character"} The edge
      color.}

    \item{\code{dir}:}{Object of class \code{"character"} The edge direction.}
    
    \item{\code{ep}:}{Object of class \code{"xyPoint"} The end point of
      the edge.}

    \item{\code{head}:}{Object of class \code{"character"} The head node
      for this edge.}

    \item{\code{lty}:}{Object of class \code{"character"} The edge
      line type.}

    \item{\code{lwd}:}{Object of class \code{"numeric"} The edge
      line width.}

    \item{\code{sp}:}{Object of class \code{"xyPoint"} The starting
      point of the edge.}

    \item{\code{splines}:}{Object of class \code{"list"} A list of
      \code{BezierCurve} objects}
    
    \item{\code{tail}:}{Object of class \code{"character"} The tail node
      for this edge.}

    \item{\code{txtLabel}:}{Object of class \code{"character"} The edge
      text label.}    
   
  }
}

\section{Methods}{
  \describe{
    \item{splines}{Returns the \code{splines} slot}
    \item{sp}{Returns the \code{sp} slot}
    \item{ep}{Returns the \code{ep} slot}
    \item{numSplines}{Returns the number of splines}
    \item{getSpline}{Convenience method to retrieve a specific spline}
    \item{show}{Displays a concise description of the object}
    \item{lines}{Draws the edge}
    \item{head}{Gets the head slot}
    \item{tail}{Gets the tail slot}
    \item{txtLabel}{Returns any label for this edge}
    \item{arrowhead}{Retrieves the \code{arrowhead} slot.}
    \item{arrowtail}{Retrieves the \code{arrowtail} slot.}
    \item{arrowsize}{Retrieves the \code{arrowsize} slot.}
  }
}
\author{Jeff Gentry}
\seealso{\code{\link{Ragraph}}, \code{\link{BezierCurve}}, \code{\link{xyPoint}}}
\examples{
V <- letters[1:10]
M <- 1:4
g1 <- randomGraph(V, M, .2)
z <- agopen(g1,name="foo")
x <- AgEdge(z)  ## list of AgEdge objects

vv <- x[[1]]
vv
## Demonstrate the methods of this class
splines(vv)
sp(vv)
ep(vv)
numSplines(vv)
getSpline(vv, 1)
head(vv)
tail(vv)
txtLabel(vv)
arrowhead(vv)
arrowtail(vv)
arrowsize(vv)

}
\keyword{classes}
