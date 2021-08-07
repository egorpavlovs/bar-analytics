class Comment < ApplicationRecord
  belongs_to :guest
  belongs_to :worker
  belongs_to :review
end
