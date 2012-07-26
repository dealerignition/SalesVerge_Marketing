class SitemapController < ActionController::Base
  layout nil

  def index
    @posts = Refinery::Blog::Post.all
    headers['Content-Type'] = 'application/xml'
    respond_to do |format|
      format.xml
    end
  end
  
end