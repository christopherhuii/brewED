class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  delegate :first_name, to: :user, prefix: true, allow_nil: true
  # delegate :created_at, to: :comment, prefix: true, allow_nil: true
end
