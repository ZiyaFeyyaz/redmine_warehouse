# ActiveSupport::Reloader for rails >= 5
# ActionDispatch::Callbacks for rails < 5
reloader = defined?(ActiveSupport::Reloader) ? ActiveSupport::Reloader : ActionDispatch::Callbacks

reloader.to_prepare do
  paths = '/lib/redmine_warehouse/{patches/*_patch,hooks/*_hook/,hooks/*_listener}.rb'
  Dir.glob(File.dirname(__FILE__) + paths).each do |file|
    require_dependency file
  end
end


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
