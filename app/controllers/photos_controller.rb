class PhotosController < ApplicationController

  before_filter :setup, :except=>:setTV
  
  def setup
    @airplay = nil
    
    session[:tv] = "Lunada" if session[:tv] == nil
    
    session[:tv_enabled] = true if session[:tv_enabled] == nil
    
    begin
      @airplay = Airplay::Client.new
      @airplay.use session[:tv]
    rescue Airplay::Client::ServerNotFoundError
      render :text => "You must have access to a network with an AppleTV."
      return false
    end
  end
  
  def setTV
     session[:tv] = params[:tv]
     session[:tv_enabled] = params[:tv_enabled] == "true"
     
     setup
    render :text=>""
  end
  
  def show
    
    @photo = Photo.find params[:id]
    
    render
    
    @airplay.send_image( @photo.url_l, :dissolve )
        
  end
  
  def index    
    
    @photos = Photo.paginate(:page => params[:page], :per_page => 10)
    
    if request.xhr?
      render :partial => "photos"
    end
    
  end

end
