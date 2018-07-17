class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence:true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence:true
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_destroy :validate_destruction

  private

  def validate_destruction
    throw(:abort) if self.employees.count > 0
  end

end
