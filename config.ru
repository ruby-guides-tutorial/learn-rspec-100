require 'sinatra/base'
require 'json'

class Application < Sinatra::Base
  post '/expenses' do
    JSON.generate('expense_id' => 42)
  end
end

run Application.new