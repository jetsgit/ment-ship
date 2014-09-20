class Grant < ActiveRecord::Base
  has_many :disbursements
  has_many :creators, through: :disbursements
end
