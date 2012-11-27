require 'meow_logger/rails3'

module Meow
  module Logger
    class Railtie < ::Rails::Railtie
      config.after_initialize do
        Rails3.set_logger(config)
      end
    end
  end
end
