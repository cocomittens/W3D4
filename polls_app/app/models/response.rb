# == Schema Information
#
# Table name: responses
#
#  id         :bigint(8)        not null, primary key
#  choice_id  :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
    validates :choice_id, presence: true
    validates :user_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :choice_id,
        class_name: :AnswerChoice

    has_one :question,
        through: :answer_choice,
        source: :question,
        class_name: :Question

    def sibling_responses

end
