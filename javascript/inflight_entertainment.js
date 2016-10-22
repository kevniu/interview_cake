function inflightEntertainment(flightLength, movieLengths) {

  var movieLengthsSeen = new Set();
  for (var i = 0; i < movieLengths.length; i++){
    var firstMovieLength = movieLengths[i];

    var matchingSecondMovieLength = flightLength - firstMovieLength;
    if (movieLengthsSeen.has(matchingSecondMovieLength)){
      return true;
    }
    movieLengthsSeen.add(firstMovieLength);
  }
  return false;
}
