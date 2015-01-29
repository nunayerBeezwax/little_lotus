module EnvironmentVariablesExample
  class Application < Rails::Application
    config.before_configuration do
      env_file = Rails.root.join("config", 'env.yml').to_s

      if File.exists?(env_file)
        Hash[*YAML.load_file(env_file).gsub(/\=/, "").split(" ")].each do |key, value|
          ENV[key] = value
        end # end YAML.load_file
      end # end if File.exists?
    end # end config.before_configuration
  end # end class
end # end module