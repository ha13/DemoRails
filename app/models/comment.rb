class Comment < ActiveRecord::Base
  belongs_to :post
  has_attached_file :file_upload,
                    path: ":rails_root/public/system/:attachment/:basename.:extension",
                    url: "/system/:attachment/:basename.:extension"
  validates_attachment :file_upload,
                        size: {in: 0..10.megabytes},
                        content_type:{ content_type: "text/plain"}

end
