# Enter your procedural solution here!


def largest_prime_factor(num)
    prime = num
    (2..Math.sqrt(num).to_i).each do |i|
        break if prime <= 1
        prime /= i while (prime > i && prime % i == 0)
    end
    prime
end

