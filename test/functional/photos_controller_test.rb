require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert assigns(:photos) 
    assert assigns(:airplay)
    
    assert_response :success
  end

  test "test infinite scrolling" do
    
    get :show
    
    assert_response :success
    
  end
    
  
  
  test "setup of apple tv connection" do
  end
  
  test "when there are no available apple tvs it shows an error message" do
    # cause the Airplay client to raise an exeception
    
    # Airplay::Client.stubs(:new)
    # Airplay::Client.any_instance.stubs(:use).raises(Airplay::Client::ServerNotFoundError)
    
    get :index
    assert_response :success
  end
  
  
end
