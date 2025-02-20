file_path = 'config/application.rb'

file_content = File.read(file_path)

# Check if active storage is installed
if file_content.include?('require "rails/all"')
  puts 'You use all components of rails, so active storage is already installed'
elsif file_content.include?('# require "active_storage/engine"')
  new_content = file_content.gsub('# require "active_storage/engine"', 'require "active_storage/engine"')
  File.open(file_path, 'w') { |file| file.write(new_content) }
  puts 'Uncommented require "active_storage/engine" in config/application.rb'
else
  puts 'Active Storage might to be missing from your application. Please, check it manually.'
end

rails_command "active_storage:install"
rails_command "db:migrate"
