class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: true
  validates :hourly_rate, inclusion: {:in => 40..200}
  validates :store_id, presence: true

  after_create :set_password

  private

  def set_password
    self.password = rand(36**8).to_s(36)
  end
end


