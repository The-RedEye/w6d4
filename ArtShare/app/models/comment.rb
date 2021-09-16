class Comment < ApplicationRecord
    validates :body, :artwork_id, :commenter_id, presence: true 

    belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork

    belongs_to :commenter,
    foreign_key: :commenter_id,
    class_name: :User 


end
