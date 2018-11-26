class Bookmark < ApplicationRecord
  belongs_to :video
  belongs_to :user

  def checked?
    self.checked
  end
end
