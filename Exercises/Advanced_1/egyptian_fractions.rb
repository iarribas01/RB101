# # checks if series is egyptian or not
# def valid?(series)
#   # check to see that they are all unit fractions
#   return false unless series.map{|r| r.numerator}.all?(1)

#   # check to see that all fractions are unique
#   series.uniq.length == series.length
# end

# def egyptian(rational)
#   # input: rational number
#   # output: array of denominators in
#     # an egyptian fraction

#   series = [] # make empty array
#   series << rational
#   until valid?(series)
    
#     r1 = series.pop # take off last element
#     r1, r2 = split(r1)
#     series << [r1, r2]
#     series.flatten!.map!{|r|r.rationalize}

#   end

#   series
# end

# def split(rational)
#   if rational.numerator == 1
#     next_unit_rational = Rational(1,(rational.denominator+1))
#     [next_unit_rational, rational - next_unit_rational]
#   elsif rational.numerator > 1
#     [rational-1, 1]
#   else
#     next_unit_rational = Rational(1,(rational.denominator-1))
#     [next_unit_rational, rational - next_unit_rational]
#   end
# end

# # p egyptian(Rational(2, 1))
# # p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1)) # # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]



def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    puts "unit: #{unit_fraction} || target: #{target_value}"

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end

egyptian(Rational(137, 60))