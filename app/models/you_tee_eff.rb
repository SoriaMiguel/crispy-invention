# frozen_string_literal: true

class YouTeeEff < ApplicationRecord
  validates :text, presence: true

  def encode
    text.each_char.with_index do |character, idx|
      next if character.blank?
      next unless ROT_13.keys.include?(character.downcase)

      if character.downcase == character
        text[idx] = ROT_13[character]
      else
        text[idx] = ROT_13[character.downcase].upcase
      end
    end
  end
end
