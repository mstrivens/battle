require 'sinatra'

class Battle < Sinatra::Application

get '/' do
  "Hello Battle!"
end

end


# reached the step below:

# In spec/features, write a feature test that checks that the homepage says Testing infrastructure working!.
# Run rspec and check that your feature test fails with 1 example, 1 failure.
# Update your app so that the homepage displays Testing infrastructure working!.
# Run rspec and check that your feature test passes.
