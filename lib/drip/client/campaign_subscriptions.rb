module Drip
  class Client
    module CampaignSubscriptions
      # Public: List all of a subscriber's campaign subscriptions
      #
      # subscriber_id - Required. The String subscriber id of the subscriber
      #
      # Returns a Drip::Response.
      # See https://www.getdrip.com/docs.rest-api#campaign_subscriptions
      def campaign_subscriptions(subscriber_id)
        get "#{account_id}/subscribers/#{subscriber_id}/campaign_subscriptions"
      end
    end
  end
end
