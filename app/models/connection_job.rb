class ConnectionJob < ApplicationRecord
  belongs_to :job_alert
  belongs_to :user
end
