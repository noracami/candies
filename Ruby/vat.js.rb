# frozen_string_literal: true

def valid_vat_number?(vat)
  value = vat.to_i
             .digits
             .zip('12121241'.to_i.digits)
             .map { |n| n.inject(:*).digits.sum }
             .sum
  if vat[6] == '7'
    (value % 5).zero?
  else
    ((value - 10) % 5).zero? || ((value - 9) % 5).zero?
  end
end

p valid_vat_number?('88117125') # true
p valid_vat_number?('53212539') # true
p valid_vat_number?('88117126') # false
