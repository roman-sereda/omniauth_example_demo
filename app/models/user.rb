class User < ActiveRecord::Base

  def self.from_omniauth(auth_hash, type)
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
    user.name = auth_hash['info']['name']
    user.location = auth_hash['info']['location']
    user.image_url = auth_hash['info']['image']

    case type
    when 'facebook'  'twitter'
      user.url = auth_hash['info']['urls'][user.provider.capitalize]
    end
    
    p 'ok'
    user.save!
    user

  end
end
