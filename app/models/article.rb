class Article < ApplicationRecord
 
    belongs_to :user, optional: true
  #  belongs_to :basket
  # belongs_to :basket, through: :user


    # mount_uploader :avatar, AvatarUploader
    # serialize :avatars, JSON # If you use SQLite, add this line.


end
