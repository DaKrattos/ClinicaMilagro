class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient
    
    validates :doctor_id,  presence: true
    validates :date,       presence: true
    validates :hour,       presence: true
end
