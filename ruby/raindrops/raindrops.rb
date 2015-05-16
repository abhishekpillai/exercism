#Write a program that converts a number to a string, the contents of which depends on the number's prime factors.
#
#- If the number contains 3 as a prime factor, output 'Pling'.
#- If the number contains 5 as a prime factor, output 'Plang'.
#- If the number contains 7 as a prime factor, output 'Plong'.
#- If the number does not contain 3, 5, or 7 as a prime factor,
#  just pass the number's digits straight through.
#
#  ## Examples
#  #
#  #- 28's prime-factorization is 2, 2, 7.
#  #  - In raindrop-speak, this would be a simple "Plong".
#  #
class Raindrops
  class << self
    def convert(num)
      @prime_factors = [1]
      prime_factors = fetch_prime_factors(num)
      to_string(num, prime_factors)
    end


    private

    def to_string(num, prime_factors)
      return num.to_s if (special_cases = prime_factors & [3,5,7]).empty?
      string = ""
      special_cases.each do |prime|
        string << if prime == 3
          'Pling'
        elsif prime == 5
          'Plang'
        elsif prime == 7
          'Plong'
        end
      end
      string
    end

    def fetch_prime_factors(num)
      [2,3,5,7].each do |prime|
        if num % prime == 0
          @prime_factors << prime
          fetch_prime_factors(num / prime)
        end
      end
      @prime_factors
    end
  end
end
