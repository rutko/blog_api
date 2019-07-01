# frozen_string_literal: true

# API RequestController
class RequestController < ApplicationController
  require 'net/http'
  require 'uri'

  def connection
    url = URI.parse('http://localhost:3000/api')
    req = Net::HTTP::Get.new(url.path)
    res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
    render plain: res.body
  end
end
