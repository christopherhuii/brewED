class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :grains
  has_many :hops
  has_many :yeasts
  has_many :directions

  has_many :comments, :dependent => :destroy

  accepts_nested_attributes_for :grains, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :hops, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :yeasts, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :directions, :reject_if => :all_blank, :allow_destroy => true

  has_attached_file :image, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :ABV, presence: true

end
