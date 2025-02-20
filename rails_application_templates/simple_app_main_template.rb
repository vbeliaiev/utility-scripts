# Add RSpec, Shoulda-Matchers, FactoryBot, Pry
apply File.expand_path('test_utilities_template.rb', __dir__)

gem_group :development, :test do
  gem 'pry', require: false
  gem 'pry-rails'
end

run 'bundle install'

git :init
git add: '.'
git commit: "-m 'Initialize application, add RSpec, Shoulda-Matchers, FactoryBot, Pry'"

# Cofigure Active Storage
apply File.expand_path('./active_storage_template.rb', __dir__)

git add: '-A'
git commit: "-a -m 'Set up Active Storage'"
