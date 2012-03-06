class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s  # make sure it's a string
    attr_reader attr_name  # create the attribute's getter
    attr_history = attr_name+"_history"
    attr_reader attr_history # create bar_history getter
    class_eval %Q{
      def initialize
        @#{attr_history} = [nil]
      end
      def #{attr_name}= (value)
        @#{attr_history} += [value]
      end
    }
  end
end
