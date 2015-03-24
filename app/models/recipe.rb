class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :grains

  accepts_nested_attributes_for :grains, :reject_if => :all_blank, :allow_destroy => true
end
