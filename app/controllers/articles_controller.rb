require 'net/http'
require 'uri'
require 'json'

class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :search]

  def index
  end

  def search
    query = params[:q]
    return unless query.present?

    url = URI("https://newsapi.org/v2/everything?q=#{URI.encode_www_form_component(query)}&apiKey=#{ENV['NEWS_API_KEY']}")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    @articles = data["articles"].map do |article|
      {
        title: article["title"],
        url: article["url"],
        source: article["source"]["name"]
      }
    end
  end

  def save_later
    current_user.saved_articles.create(
      title: params[:title],
      url: params[:url],
      source: params[:source]
    )
    puts "🧪 PARAMS RECEBIDOS:"
    puts params.inspect
  end

  def saved_list
    @saved_articles = current_user.saved_articles
  end

  def remove_saved
    article = current_user.saved_articles.find(params[:id])
    article.destroy
    redirect_to saved_list_path
  end
end
