require 'meow_logger/rails'

module MeowLogger
  class Rails3 < Rails
    def self.set_logger(config)
      super()
      ::Rails.logger = config.logger = stdout_logger
    end
  end
end
