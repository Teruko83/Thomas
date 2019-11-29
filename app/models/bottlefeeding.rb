class Bottlefeeding < ApplicationRecord
  belongs_to :baby

  def self.show_feedings(id)
    Bottlefeeding.where(baby_id: id).each do |bottle|
      "<div>#{bottle.quantity}</div>"
    end
  end
end
