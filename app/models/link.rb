class Link < ActiveRecord::Base
  has_and_belongs_to_many :tags

  default_scope { order(updated_at: :desc) }
end
