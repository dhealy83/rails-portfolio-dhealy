class Project < ApplicationRecord

    has_many_attached :images
    has_rich_text :description

end
