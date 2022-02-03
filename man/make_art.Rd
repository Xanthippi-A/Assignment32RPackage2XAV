\name{make_art}
\alias{make_art}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Creates random art using the geom_point function
}
\description{
The function creates random art using the geom_point function (from package ggplot2) and the viridis colour palette.
If the user defines a seed, the function uses it in sampling the colour, plotting start point and power at which x and y are raised.
Otherwise the function generates a random seed.
The function installs and loads the required packages dplyr, ggplot2 and viridis if necessary.
!!!WARNING: Depending on the machine, the function may take several minutes!!!
}
\usage{
make_art(seed)
}

\arguments{
  \item{seed}{
the seed used for sampling local variables
}
}
\details{
make_art defines x = x^pwr - sin(y) and y = y^pwr - cos(x),
where pwr is a local variable ranging from 1 to 9.
The colour of the data points is defined by local variable color,
which is sampled out of 1000 colours generated from the viridis palette.
Plotting of datapoints starts from coordinates defined by coord_polar,
which uses local variable radians to define the starting position
}
\value{
A plot of datapoints with alpha = .05, shape = 20 and size = 0
}
\references{
Based on code found in https://cpastem.caltech.edu/documents/18024/ARt.nb.html
}
\author{
Xanthippi Alexi Vassiliou
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

## Generating an image with a user defined seed
make_art(555)

## Generating an image using a random seed
make_art()

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
