require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello world!"
end

get '/test' do
  "Test response"
end

get '/random_cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named_cat' do
  p params
  @name = params[:name]
  erb :index
end

  # Add a form to the view rendered by the /named-cat route
  
  # Set the form action attribute to the /named-cat path
  
  # Add an input element within the form, with a type attribute of text 
  # and a name attribute of name
  
  # Add another input element within the form, with a type attribute of 
  # submit and a value attribute of Submit
  
  # Visit the page in your browser. Use the form to change the name of the cat
  
  # Using <% if %> within your view, conditionally render the form only if a user 
  #   has not entered a name (i.e. if @name is empty)

  # Explain to your pair partner how the attributes of inputs in the form affect the query string in the URL
  # bar when you submit the form

  #   Modify some of the attributes of the inputs (e.g. the name attribute) and explain 
  # to your pair partner how this affects the query string in the URL bar when you submit the form
  
  # Print the incoming params to the server logs each time you visit the route
  
  # Explain to your pair partner how modifying input attributes (e.g. name) affects the incoming params hash