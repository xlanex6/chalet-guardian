class JobAlert < ApplicationRecord
  belongs_to :job_categorie
  belongs_to :user
  belongs_to :ski_resort
  has_many :connection_jobs
  has_attachment :photo
end
