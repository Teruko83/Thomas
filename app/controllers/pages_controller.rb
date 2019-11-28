class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    # so we can inject it in JS, we need to collect the result as shown below
    # [{x: '2019-11-26', y: 1 }, {t: '2019-11-25', y: 10 }, {t: '2019-11-24', y: 20 }]
    # AKA ====> an Array of hashes / in every hash, keys are x and y, values are date and consumption
    @last7 = quantityforjs(7)
    @last30 = quantityforjs(30)
  end

  def quantityforjs(span) # span must be an integer
    @baby = Baby.first # User.first is for testing, to be replaced by current_user
    arr1 = []
    span_quantity = []

    @baby.bottlefeedings.each do |f|
      arr1 << f if f.created_at > (Date.today - span) # arr1 : instances for last [span] days # attention: created_at = min + date, alors que date = date
    end

    arr1.each do |g|
      hash1 = {}
      hash1["x"] = g.created_at.to_s
      hash1["y"] = g.quantity
      span_quantity << hash1
    end
    span_quantity

    def home
    @baby = current_user.babies.first
    end
end
