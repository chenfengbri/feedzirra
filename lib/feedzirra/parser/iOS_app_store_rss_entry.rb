module Feedzirra

  module Parser
    class IOSAppStoreRSSEntry
      include SAXMachine
      include FeedEntryUtilities
      
      element :id, :as => :entry_id, :value => :"im:id"
      element :updated
      element :title
      element :summary
      element :"im:name", :as => :name
      element :link, :as => :url, :value => :href, :with => { :rel => "alternate" }
      element :"im:contentType", :as => :contentType_name, :value => :term
      element :"im:contentType", :as => :contentType_local_name, :value => :label
      element :category, :as => :category_name, :value => :term
      element :category, :as => :category_local_name, :value => :label
      element :category, :as => :category_id, :value => :"im:id"
      element :category, :as => :category_url, :value => :scheme
      element :"im:artist", :as => :artist_name
      element :"im:artist", :as => :artist_url, :value => :href
      element :"im:price", :as => :price
      element :"im:price", :as => :price_amount, :value => :amount
      element :"im:price", :as => :price_currency, :value => :currency
      element :"im:image", :as => :image_50_url, :with => { :height => "53" }
      element :"im:image", :as => :image_75_url, :with => { :height => "75" }
      element :"im:image", :as => :image_100_url, :with => { :height => "100" }
      element :"im:releaseDate", :as => :releaseDate, :value => :label
      element :cotent
      element :rights
          
      def app_id
        @entry_id
      end

      def app_url
        @url
      end
    end

  end

end