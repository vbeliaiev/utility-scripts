

#run "spring stop"

gem_group :test do
  gem 'rspec-rails', '~> 7.1', '>= 7.1.1'
  gem 'shoulda-matchers', '~> 6.4'
end

gem_group :development, :test do
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.4'
end

run "bundle install"

rails_command "generate rspec:install"

if Dir.exist?('test')
  run "rm -rf test" if yes?("Do you want to remove the /test directory?")
end

inject_into_file 'config/application.rb', after: "class Application < Rails::Application\n" do
	<<-RUBY
		# For the code consistency move it to the end of this block
		config.generators do |g|
			g.test_framework :rspec,
											fixtures: true,
											view_specs: false,
											helper_specs: false,
											routing_specs: false,
											controller_specs: false,
											request_specs: true
			g.fixture_replacement :factory_bot, dir: "spec/factories"
		end
	RUBY
end

# Configure FactoryBot and Shoulda Matchers
inject_into_file 'spec/rails_helper.rb', after: "RSpec.configure do |config|\n" do
	<<-RUBY
		config.include FactoryBot::Syntax::Methods

		Shoulda::Matchers.configure do |config|
			config.integrate do |with|
					with.test_framework :rspec
					with.library :rails
			end
		end
	RUBY
end