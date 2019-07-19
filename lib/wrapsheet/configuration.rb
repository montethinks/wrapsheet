module Wrapsheet
  class Configuration
    attr_accessor :google_account_type

    class << self
      attr_accessor :config
    end

    def self.configure(&block)
      self.config = new
      block[config]
    end

  end
end
