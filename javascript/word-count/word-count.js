
var wordCount = function(input) {
  words = input.split("\n").join(" ").split("\t").join(" ").split(" ");
  counts = {};
  words.forEach(function(word) {
    if (word != '') {
      if (counts[word] === undefined || typeof(counts[word]) === "function") {
        counts[word] = 0;
      }
      counts[word]++;
    }
  });
  return counts;
};

module.exports = wordCount;
