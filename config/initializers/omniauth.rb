Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1879031692351373", "ee1905e7cd45c34c2fcb73d356d0b51f", scope: 'public_profile', info_fields: 'id, name, link'
  provider :google_oauth2, "760845203963-tc4ne8t445tmka9tkidb43smqeeaum4e.apps.googleusercontent.com" ,"9jvcRzcuNAKNykyUfqg2E37H", scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online'
end
