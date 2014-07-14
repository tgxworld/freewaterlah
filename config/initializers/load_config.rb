::RAILS_ENV = ENV['RAILS_ENV'] || 'development'
::RAILS_ROOT = File.expand_path('../..', __FILE__)

settings = YAML.load_file("#{::RAILS_ROOT}/settings.yml")[::RAILS_ENV]

AppSettings = OpenStruct.new(settings) unless defined?(AppSettings)
