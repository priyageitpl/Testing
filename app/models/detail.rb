class Detail < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true
    validates :height, presence: true
    validates :complex, presence: true
    validates :father_name, presence: true
    validates :mother_name, presence: true
    validates :address, presence: true

end
