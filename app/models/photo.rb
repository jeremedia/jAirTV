class Photo < ActiveRecord::Base
  
  def self.get_user_photos user_id="22456113@N00"
    
    flickr_count = flickr.people.getInfo(:user_id=>user_id).photos.count
    
    local_count = Photo.where(:owner_id=>user_id).count
    
    if flickr_count > local_count
      
      paging = true
      
      page = 1
      
      while paging
    
        photos = flickr.people.getPublicPhotos(:page=>page, :per_page=>10,:user_id=>user_id, :extras=>"url_sq, url_t, url_s, url_m, url_z, url_l, url_o")
        
        photos.photo.each do |photo|
          photo_ob = Photo.find_or_create_by_flickr_id(:flickr_id=>photo.id)
          hash = photo.to_hash
          hash.delete("id")
          puts hash
          photo_ob.update_attributes(hash)
        end
        
        paging = false if photos.page == photos.pages
        
        page += 1
        
      end
      
      
    end
    
    
  end
  
end
