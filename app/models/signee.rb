class Signee < ActiveRecord::Base
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  attr_accessible :email
end
