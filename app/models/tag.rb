class Tag < ActiveRecord::Base
  # validates :tag_name, presence: true
  # validates :post_id, presence: true
  belongs_to :post
end