class JobCategorie < ApplicationRecord
  has_many :users
  has_many :job_alerts
end
