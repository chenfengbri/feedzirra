module Feedzirra

  module Parser
    class IOSAppStoreRSS
      include SAXMachine
      include FeedUtilities

      element :id
      element :title
      element :updated
      element :link, :as => :feed_url, :value => :href, :with => { :rel => "self" }
      element :author
      element :rights
      elements :entry, :as => :entries, :class => IOSAppStoreRSSEntry
 
      def self.able_to_parse?(xml) #:nodoc:
        xml =~ /xmlns:im="http:\/\/itunes.apple.com\/rss"/
      end
    end
  end

end