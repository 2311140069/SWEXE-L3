class Book < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :author, presence: true
  validates :url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
end
