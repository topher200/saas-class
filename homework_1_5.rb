class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s  # make sure it's a string
    attr_reader attr_name  # create the attribute's getter
    attr_history = attr_name+"_history"
    attr_reader attr_history # create bar_history getter
    class_eval %Q{
      def #{attr_name}= (value)
        # TODO(topher): there has to be a better place to initialze this
        if not @#{attr_history}
          @#{attr_history} = [nil]
        end
        @#{attr_history} << value
      end
    }
  end
end
