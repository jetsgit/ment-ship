class Creator < ActiveRecord::Base
  has_many :disbursements
  has_many :grants, through: :disbursements
  has_many :proposals
end
