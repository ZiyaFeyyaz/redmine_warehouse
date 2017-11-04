Redmine::Plugin.register :redmine_warehouse do
  name 'Redmine Warehouse plugin'
  author 'Ziya Feyyaz'
  description 'This is a plugin for managing products on warehouse'
  version '0.0.1'
  url 'https://github.com/ZiyaFeyyaz/redmine_warehouse'
  author_url 'https://github.com/ZiyaFeyyaz'


  menu :application_menu, :products, { :controller => 'products', :action => 'index' }, :caption => 'Warehouse'
  # permission :products, { :products => [:index, :new ] }, :public => true
  # menu :project_menu, :projects, { :controller => 'products', :action => 'index' },
  #      :caption => 'Warehouse', :before => :setting, :param => :project_id
end
