% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data2col.R
\name{data2col}
\alias{data2col}
\title{Data to color mapping}
\usage{
data2col(
  data,
  cols = NULL,
  hueRange = c(0, 360),
  intensityRange = c(0.4, 1),
  alpha = 1,
  numCols = 1e+05,
  maxColorValue = 255,
  xLow = min(data, na.rm = TRUE),
  origin = NULL,
  xHigh = max(data, na.rm = TRUE),
  missingCol = NULL,
  outRangeCol = NULL
)
}
\arguments{
\item{data}{vector of data values}

\item{cols}{a vector of rgb colours or NULL (default).  If NULL, cols is constructed from \code{hueRange}, \code{intensityRange}, \code{alpha}, \code{alpha}, \code{numCols}, and \code{maxColorValue}.}

\item{hueRange}{numeric vectors with values in [0, 360], it specify the hue range. It does not need to be in ascending order since it is only used in the linear interpolation}

\item{intensityRange}{numeric vectors with values in [0, 1], it specifies the intersity range. It does not need to be in ascending order since it is only used in the linear interpolation}

\item{alpha}{number in [0,1]. It specifies the \code{alpha} transparency value.}

\item{numCols}{number. It specifies the number of colors used to do the mapping, and the higher the value is, the more distinguished between different data values.}

\item{maxColorValue}{number in (0, 255]. giving the maximum of the color values range.}

\item{xLow}{lower value of one's interested range}

\item{origin}{middle value in one's interested range in (\code{xLow}, \code{xHigh}), which specifies the data value mapping to the center of color scale}

\item{xHigh}{higher value of one's interested range}

\item{missingCol}{color character specifying the color for the missing data. It is in the form of "#rrggbbaa", and the default is yellow.}

\item{outRangeCol}{color characters specifying the color for the data outside our interested range. If the \code{length} is two, the first will specify the color for the data lower than the range,
and the second is for higher. the color should have the same form with \code{missingCol}, and the default is "blue" and "red".}
}
\value{
a vector of color chacacters which can be used to plot
}
\description{
data2col provides a mapping from data values to color values by using hsi color space. One can use \code{hueRange}, \code{intensityRange}, \code{alpha}, \code{alpha}, \code{numCols}, and \code{maxColorValue} to adjust the mapping.
Also, missingCol specifies the color to the missing data.
}
\examples{
data <- 1:10
col <- data2col(data)
barplot(rep(1:length(data)),col = col)
}
\author{
Jiahua Liu, Wayne Oldford
}
