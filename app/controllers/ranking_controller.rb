class RankingController < ApplicationController
    def have
      @ranking_item_ids = Have.group(:item_id).order('count_all desc').limit(10).count.keys
    end
    
    def want
      @ranking_item_ids = Want.group(:item_id).order('count_all desc').limit(10).count.keys
    end
    
end
