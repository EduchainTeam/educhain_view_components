module Educhain
  module ViewComponents
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
