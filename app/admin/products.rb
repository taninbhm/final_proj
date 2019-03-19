ActiveAdmin.register Product do

    permit_params :title, :price, :Image, :description, :category_id;
end
