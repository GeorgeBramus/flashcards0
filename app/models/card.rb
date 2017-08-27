class Card < ApplicationRecord
  require "date"
  validates :original_text, :translated_text, presence: true
  # validate :coincidence, on: :create

  # validate :expiration_date_cannot_be_in_the_past,
  #   :discount_cannot_be_greater_than_total_value

  # def expiration_date_cannot_be_in_the_past
  #   if expiration_date.present? && expiration_date < Date.today
  #     errors.add(:expiration_date, "can't be in the past")
  #   end
  # end

  # def discount_cannot_be_greater_than_total_value
  #   if discount > total_value
  #     errors.add(:discount, "can't be greater than total value")
  #   end
  # end


  # with_options if: :coincidence? do |coincidence|
  #   coincidence.errors.add(:original_text, "The original text should be different from the translated text")
  # end
  # def coincidence
  #   if original_text.downcase == translated_text.downcase
  #     errors.add(:original_text, "The original text should be different from the translated text")
  #   end
  # end

  before_save :date_change, on: [ :create, :update ]

  private
    def date_change
      self.review_date = Date.today + 3
    end
end

