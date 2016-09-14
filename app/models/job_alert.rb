class JobAlert < ApplicationRecord
  belongs_to :job_categorie
  belongs_to :user
  belongs_to :ski_resort
  has_many :connection_jobs
  has_attachment :photo

  validates :job_categorie_id,
            :user_id,
            :start_date,
            :end_date,
            :address,
            :ski_resort_id,
            :description, presence: true
end
