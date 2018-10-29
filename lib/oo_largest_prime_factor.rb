# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_reader :number
  
    def initialize(num)
      @number = largest_prime_factor(num)
    end
  
    def largest_prime_factor(num)
      prime = num
      (2..Math.sqrt(num).to_i).each do |i|
        break if prime <= 1
        prime /= i while (prime > i && prime % i == 0)
      end
      prime
    end
  end