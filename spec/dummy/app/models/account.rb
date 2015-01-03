class Account < ActiveRecord::Base
  validates :swift_string, swift: true
end
