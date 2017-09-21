class Post < ApplicationRecord
  has_attached_file :image,
                    styles: { large: "750x750#>",
                              medium: "350x350#>",
                              thumb: "150x150#" },
                    default_url: "/images/:style/missing.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
