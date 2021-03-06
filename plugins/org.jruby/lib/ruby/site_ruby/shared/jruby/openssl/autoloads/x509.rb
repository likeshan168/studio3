require 'rubygems'

# try to activate jruby-openssl gem for OpenSSL::SSL, raising error if gem not present
begin
  gem 'jruby-openssl'
  require 'openssl.rb'
rescue Gem::LoadError => e
  raise LoadError.new("OpenSSL::X509 requires the jruby-openssl gem")
end
