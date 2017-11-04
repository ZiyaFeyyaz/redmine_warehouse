module RedmineWarehouse
  module Hooks
    class ProductsHookListener < Redmine::Hook::ViewListener
      render_on :view_issues_show_details_bottom, :partial => 'products/issue_products_show'
    end
  end
end
