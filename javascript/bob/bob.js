//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
//
// YOUR CODE GOES HERE
//
  if (isSilence(input)) {
    return 'Fine. Be that way!';
  } else if (!isNumbersOnly(input) && isShout(input)) {
    return 'Whoa, chill out!';
  } else if (isQuestion(input)) {
    return 'Sure.';
  } else if (isForceful(input) || isNumbersOnly(input)) {
    return 'Whatever.';
  } else {
    return 'Whatever.';
  }
};

var isSilence = function(input) {
  return (input.trim() === '');
};

var isShout = function(input) { 
  return (input == input.toUpperCase());
};

var isQuestion = function(input) {
  return (input.indexOf('?') == (input.length - 1));
};

var isForceful = function(input) {
  return (input.indexOf('!') != -1);
};

var isNumbersOnly = function(input) {
  return (input == input.toLowerCase() && input == input.toUpperCase());
};

module.exports = Bob;
