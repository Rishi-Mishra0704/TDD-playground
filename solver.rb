class Solver
    def factorial(n)
      raise ArgumentError, "Input must be a non-negative integer" if n < 0
      
      result = 1
      (1..n).each do |i|
        result *= i
      end
      result
    end

    def reverse(word)
        word.reverse
      end

      def fizzbuzz(n)
        if (n%3).zero? && (n%5).zero?
            'fizzbuzz'
        elsif (n%3).zero?
            'fizz'
        elsif (n%5).zero?
            'buzz'
        else
            n.to_s
        end
    end    
  end
