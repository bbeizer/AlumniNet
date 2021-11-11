class Enrollment < ApplicationRecord
    belongs_to :u
    belongs_to :course
end
