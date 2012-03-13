class CartesianProduct
  include Enumerable
  def each
    @array1.each do |e1|
      @array2.each do |e2|
        yield [e1, e2]
      end
    end
  end
  
  def initialize(array1, array2)
    @array1 = array1
    @array2 = array2
  end
end
