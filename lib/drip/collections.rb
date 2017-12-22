require "drip/collections/accounts"
require "drip/collections/broadcasts"
require "drip/collections/campaigns"
require "drip/collections/campaign_subscriptions"
require "drip/collections/errors"
require "drip/collections/purchases"
require "drip/collections/subscribers"
require "drip/collections/tags"
require "drip/collections/webhooks"

module Drip
  module Collections
    def self.classes
      [
        Drip::Accounts,
        Drip::Broadcasts,
        Drip::Campaigns,
        Drip::CampaignSubscriptions,
        Drip::Errors,
        Drip::Purchases,
        Drip::Subscribers,
        Drip::Tags,
        Drip::Webhooks
      ]
    end

    def self.find_class(name)
      self.classes.find { |c| c.collection_name == name } || Drip::Collection
    end
  end
end
