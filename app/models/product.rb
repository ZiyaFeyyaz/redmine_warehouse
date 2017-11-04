class Product < ActiveRecord::Base
  # unloadable

  belongs_to :issue

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => { :greater_than_or_equal_to => 0, :message => :invalid}
  validates :quantity, :numericality => { :greater_than_or_equal_to => 0, :message => :invalid}
  validates :production_date, :date => true
end
