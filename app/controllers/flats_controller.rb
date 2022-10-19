# frozen_string_literal: true

require 'open-uri'

# flats controller
class FlatsController < ApplicationController
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'

    @flats = JSON.parse(URI.open(url).read)
  end
end
