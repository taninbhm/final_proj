module ApplicationHelper
    def total_price
        ids = session[:cart]
        totalprice = 0
        ids.each do |id|
            item = OrderItem.where(id: id).first
            totalprice += item.price
        end
        totalprice
      end
end
