module ErrorappNotifier
  class Config
    @@server_address = ""
    @@api_key = ""
    @@ignore_exceptions = []

    class << self
      def server_address=(val)
        @@server_address = val
      end

      def server_address
        @@server_address
      end

      def api_key=(val)
        @@api_key = val
      end

      def api_key
        @@api_key
      end
      
      def ignore_exceptions=(val)
        unless val.kind_of?(Array)
          val = Array(val)
        end
        @@ignore_exceptions = val.flatten
      end

      def ignore_exceptions
        @@ignore_exceptions
      end
      
    end
  end
end
