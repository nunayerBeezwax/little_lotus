GMAIL_CONFIG = YAML.load_file("#{::Rails.root}/config/gmail.yml")[::Rails.env]