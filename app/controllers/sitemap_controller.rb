class SitemapController < ActionController::Base
  layout nil

  def index
    @posts = Refinery::Blog::Post.where("published_at < ?", Time.now)
    headers['Content-Type'] = 'application/xml'
    respond_to do |format|
      format.xml
    end
  end
  
end