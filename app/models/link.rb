class Link < ActiveRecord::Base
  # One link can have multiple tags
  has_and_belongs_to_many :tags

  # Sort by `updated_at` DESC when retrieving all links
  default_scope { order(updated_at: :desc) }

  # URL is the only required field
  validates :url, presence: true

  # Default values after initialization
  after_initialize :init

  def init
    # TODO put `is_private?` default value in settings
    self.is_private = false if self.is_private.nil?
  end
end
