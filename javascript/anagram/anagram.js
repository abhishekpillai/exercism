/*
* Write a program that, given a word and a list of possible anagrams, selects
* the correct sublist.
*
* Given `"listen"` and a list of candidates like `"enlists" "google" "inlets"
* "banana"` the program should return a list containing `"inlets"`.
*/

var matcher = {
  matches: function(candidates) {
    if(typeof(candidates) !== "object") {
      var string_args = Array.prototype.slice.call(arguments, this.length);
      candidates = string_args;
    }
    var matches = [];

    for(i=0; i < candidates.length; i++) {
      var match = true;
      var candidate = candidates[i].toLowerCase();
      var word_indices = [];

      if(word_to_match === candidate ||
         word_to_match.length !== candidate.length) {
        match = false;
      }

      while(match && word_indices.length < word_to_match.length) {
        for(x=0; x < word_to_match.length; x++) {
          index = candidate.indexOf(word_to_match[x]);
          if(index === -1) {
            match = false;
          } else {
            if(word_indices.indexOf(index) === -1) {
              word_indices.push(index);
            } else {
              match = false;
            }
          }
        }
      }

      if(match) {
        matches.push(candidates[i]);
      }
    }
    return matches;
  }
};

var anagram = function(word) {
  this.word_to_match = word.toLowerCase();
  return matcher;
};

module.exports = anagram;
