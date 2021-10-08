class Post < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :content, presence: true

  before_save :ban_word

  def ban_word
    self.content.gsub!("spoiler", "")
  end
end
