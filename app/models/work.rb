class Work < ApplicationRecord
  has_many_attached :images
  has_one_attached :avater
end
