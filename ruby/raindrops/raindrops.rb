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
    SPECIAL_FACTORS = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong',
    }

    def convert(num)
      special_factors_in_num = factors_included_in(num)
      to_string(num, special_factors_in_num)
    end

    def to_string(num, special_factors_in_num)
      return num.to_s if special_factors_in_num.empty?
      string = ""
      special_factors_in_num.each do |prime|
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

    def factors_included_in(num)
      special_factors_in_num = []
      SPECIAL_FACTORS.keys.each do |prime|
        if num % prime == 0
          special_factors_in_num << prime
        end
      end
      special_factors_in_num
    end
  end
end
