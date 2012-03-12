class Dollar < Numeric
  def initialize(amount)
    @amount = amount
  end
  
  def in(currency)
    singular_currency = singular(currency)
    if @@currencies.has_key?(singular_currency)
      @amount / @@currencies[singular_currency]
    end
  end
end
  
class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019,
    'dollar' => 1.0}
  def singular(currency)
    currency.to_s.gsub( /s$/, '')
  end
  
  def method_missing(method_id)
    singular_currency = singular(method_id)
    if @@currencies.has_key?(singular_currency)
      Dollar.new(self * @@currencies[singular_currency])
    else
      super
    end
  end
end
