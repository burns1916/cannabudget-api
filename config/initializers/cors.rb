Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
     origins 'https://localhost:3000', 'https://localhost:3001', 'https://cannabudget-api.herokuapp.com/', 'http://localhost:3000', 'https://localhost:3001', 'https://localhost:1'

     resource '*',
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head],
       credentials: true
   end
 end