class Article < ApplicationRecord
    # mount_uploaders :avatars, AvatarUploader
     serialize :avatars, JSON # If you use SQLite, add this line.

    belongs_to :user, optional: true
  #  belongs_to :basket
  # belongs_to :basket, through: :user
end
