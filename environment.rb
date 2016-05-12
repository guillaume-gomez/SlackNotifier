$LOAD_PATH << File.expand_path(File.dirname(__FILE__))
%w{ rubygems bundler find dotenv}.each { |lib| require lib }
Bundler.require

Dotenv.load
%w{config/initializers models jobs}.each do |load_path|
  Find.find(load_path) { |f| require "./#{f}" unless f.match(/\/\..+$/) || File.directory?(f) }
end
