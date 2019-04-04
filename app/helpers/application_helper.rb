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

      def user_avatar(user, size=40)
        if user.avatar.attached?
          user.avatar.variant(resize: "#{size}x#{size}!")
        else
          gravatar_image_url(user.email, size: size)
        end
      end
end
