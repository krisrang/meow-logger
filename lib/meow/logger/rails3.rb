require 'meow-logger/rails'

module Meow
  module Logger
    class Rails3 < Rails
      def self.set_logger(config)
        super()
        ::Rails.logger = config.logger = stdout_logger
      end
    end
  end
end
