Rails.application.config.sorcery.submodules = [:remember_me]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
  end
  config.user_class = "User"
end