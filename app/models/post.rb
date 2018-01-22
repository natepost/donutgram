class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :image,
                    styles: { large: "750x750#>",
                              medium: "350x350#>",
                              thumb: "150x150#" },
                    default_url: "/images/:style/missing.png"

  

end
