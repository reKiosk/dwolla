module Dwolla
  def self.endpoint=(endpoint)
    @@endpoint = endpoint
  end

  def self.endpoint
    @@endpoint
  end

  def self.user_agent=(user_agent)
    @@user_agent = user_agent
  end

  def self.user_agent
    @@user_agent
  end

  def self.debugging?
    !!@@debug
  end

  def self.debug=(debug)
    @@debug = debug
  end

  self.debug = false
  self.user_agent = "Dwolla Ruby Wrapper"
  self.endpoint = "https://www.dwolla.com/oauth/rest"
end

require 'faraday'
require 'multi_json'

require "dwolla/exceptions"
require "dwolla/response/parse_json"
require "dwolla/response/follow_redirects"
require "dwolla/connection"
require "dwolla/client"
require "dwolla/transaction"
require "dwolla/user"
require "dwolla/version"
