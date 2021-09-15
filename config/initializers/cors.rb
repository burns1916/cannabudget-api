Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
     origins 'https://localhost:3000', 'https://cannabudget-api.herokuapp.com/'

     resource '*',
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end