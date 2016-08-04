
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :whiplash, ENV['WHIPLASH_CLIENT_ID'], ENV['WHIPLASH_CLIENT_SECRET'], scope: 'read_orders,write_orders,read_items,write_items,read_web_hooks,write_web_hooks,read_customers,read_user',   client_options: {
      site: 'https://testing.whiplashmerch.com'
    }
end
