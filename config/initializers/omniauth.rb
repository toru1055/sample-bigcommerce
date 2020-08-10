Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bigcommerce, ENV['BC_CLIENT_ID'], ENV['BC_CLIENT_SECRET'],
           {
               scope: "store_v2_default users_basic_information",
               client_options: {
                   site: 'https://login.bigcommerce.com'
               }
           }
end