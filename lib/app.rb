 # ligne très importante qui appelle la gem.
require 'twitter'

# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'# Appelle la gem Dotenv

Dotenv.load # Ceci appelle le fichier .env grâce à la gem Dotenv, et importe toutes les données enregistrées dans u


# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter(client="")
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
require 'pry'
binding.pry          
    return client
    
end

puts login_twitter(client)


# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet en Ruby !!!!')
