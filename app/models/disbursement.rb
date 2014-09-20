class Disbursement < ActiveRecord::Base
  belongs_to :creator
  belongs_to :grant
end
