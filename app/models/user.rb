class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments

  def display_avatar
    if self.avatar.nil?
      'http://harboarts.com/shirtdesigner/jpg_design_exports/donald-trump-profile-silhouette-vector-graphic_template_1469623874993O0L.jpg'
    else
      self.avatar
    end
  end
end
