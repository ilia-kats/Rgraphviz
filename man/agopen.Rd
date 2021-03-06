\name{agopen}
\alias{agopen}
\title{A function to obtain a libgraph object}
\description{
  This function will read in a \code{graph} object and create a
  \code{Ragraph} object, returning it for use in other functions.  The
  graph represented by the \code{Ragraph} can be laidout in various formats.
}
\usage{
agopen(graph, name, nodes, edges, kind = NULL, layout = TRUE,
       layoutType = "dot",
       attrs = list(), nodeAttrs = list(), edgeAttrs = list(),
       subGList = list(), edgeMode = edgemode(graph),
       recipEdges=c("combined", "distinct"))
}
\arguments{
  \item{graph}{An object of class \code{graphNEL}}
  \item{nodes}{A list of \code{pNode} objects}
  \item{edges}{A list of \code{pEdge} objects}
  \item{name}{The name of the graph}
  \item{kind}{The type of graph}
  \item{layout}{Whether to layout the graph or not}
  \item{layoutType}{Defines the layout engine.  Defaults to dot, and see
  \code{graphvizCapabilities()$layoutTypes} for possible values.}
  \item{attrs}{A list of graphviz attributes}
  \item{nodeAttrs}{A list of specific node attributes}
  \item{edgeAttrs}{A list of specific edge attributes}
  \item{subGList}{A list describing subgraphs for the graph parameter}
  \item{edgeMode}{Whether the graph is directed or undirected}
  \item{recipEdges}{How to handle reciprocated edges, defaults to
    \code{combined}}
}
\details{
  \code{graph} is from the package \code{\link[graph]{graph-class}}.

  The user can specify either the \code{graph} parameter and/or a
  combination of \code{nodes} and \code{edges}.  If either of the latter
  parameters are not specified then \code{graph} must be passed in, and
  is used in the functions \code{\link{buildNodeList}} and
  \code{\link{buildEdgeList}} (as appropriate - if \code{nodes} is
  passed in but \code{edges} is not, only \code{\link{buildEdgeList}} is
  called) which are default transformer functions to
  generate the \code{pNode} and \code{pEdge} lists for layout.

  The \code{edgeMode} argument specifies whether the graph is to be laid
  out with directed or undirected edges.  This parameter defaults to the
  edgemode of the \code{graph} argument - note that if \code{graph} was
  not passed in then \code{edgeMode} must be supplied.

  The kind parameter works as follows:
  \describe{
    \item{NULL:}{Determine the direction of the graph from the \code{graph}
      object.  This is the default and the recommended method.} 
    \item{AGRAPH:}{An undirected graph}
    \item{AGDIGRAPH:}{A directed graph}
    \item{AGRAPHSTRICT:}{A strict undirected graph}
    \item{AGDIGRAPHSTRICT:}{A strict directed graph}
  }
  Strict graphs do not allow self arcs or multi-edges.

  If \code{layout} is set to \code{TRUE}, then the \code{libgraph}
  routines are used to compute the layout locations for the graph.
  Otherwise the graph is returned without layout information.

  The \code{subGList} parameter is a list describing any subgraphs,
  where each element represents a subgraph and is itself a list with up
  to three elements.  The first element, \code{graph} is required and
  contains the actual \code{graph} object for the subgraph.  The second
  element, \code{cluster} is a logical value indicating if this is a
  \code{cluster} or a \code{subgraph} (a value of \code{TRUE} indicates
  a cluster, which is also the default value if this element is not
  specified).  In Graphviz, subgraphs are more of an organizational
  mechanism, whereas clusters are laid out separately from the main
  graph and then later inserted.  The last element of the list,
  \code{attrs} is used if there are any attributes for this subgraph.
  This is a named vector where the names are the attributes and the
  elements are the values for those attributes.

  For a description of \code{attrs}, \code{nodeAttrs} and
  \code{edgeAttrs}, see the \code{\link{Ragraph}} man page.

  The \code{recipEdges} argument can be used to specify how to handle
  reciprocal edges.  The default value, \code{combined} will combine any
  reciprocated edges into a single edge (and if the graph is directed,
  will by default place an arrowhead on both ends of the edge), while
  the other option is \code{distinct} which will draw to separate
  edges.  Note that in the case of an undirected graph, every edge of a
  \code{graphNEL} is going to be reciprocal due to implementation issues.
}
\value{
  An object of class \code{Ragraph}
}
\references{http://www.research.att.com/sw/tools/graphviz/}
\author{Jeff Gentry}
\seealso{\code{\link{graphLayout}},
  \code{\link{Ragraph}}, \code{\link{plot}}}
\examples{
set.seed(123)
V <- letters[1:10]
M <- 1:4
g1 <- randomGraph(V, M, .2)
z <- agopen(g1,name="foo")
z
z <- agopen(g1,name="foo",layoutType="neato")
}
\keyword{graphs}

