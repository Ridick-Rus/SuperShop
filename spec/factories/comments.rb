FactoryBot.define do
  factory :comment do
    association :user

    sequence :body do |n|
      "Comment number - #{n}"
    end

    transient do
      commentable { nil }
    end

    commentable_id { commentable&.id }
    commentable_type { commentable&.class&.name }
  end
end
