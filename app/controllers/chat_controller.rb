# require 'net/http'
# require 'uri'

# class ChatController < ApplicationController
#   def chat
#     api_key = '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'
#     user_message = params[:message]

#     uri = URI('https://api.openai.com/v1/chat/completions')
#     request = Net::HTTP::Post.new(uri)
#     request.content_type = 'application/json'
#     request["Authorization"] = "Bearer #{api_key}"
#     request.body = JSON.dump({
#       "model": "gpt-3.5-turbo",
#       "messages": [
#         {
#           "role": "system",
#           "content": "You are a helpful assistant."
#         },
#         {
#           "role": "user",
#           "content": user_message
#         }
#       ]
#     })

#     req_options = {
#       use_ssl: uri.scheme == "https",
#     }

#     response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#       http.request(request)
#     end

#     response = JSON.parse(response.body)
#     response_text = response['choices'][0]['message']['content']

#     # Assuming the response text is a list of plant names separated by commas
#     recommended_plants = response_text.split(', ')

#     # Get the list of plant names from the database
#     plants = Plant.all.pluck(:name)

#     # Check each recommended plant to see if it's in the list from the database
#     valid_plants = recommended_plants.select { |plant| plants.include?(plant) }

#     # Respond with the valid plant names
#     render json: {message: valid_plants.join(', ')}

#     response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#       http.request(request)
#     end

#     response = JSON.parse(response.body)
#     response_text = response['choices'][0]['message']['content']

#     puts "Response from OpenAI: #{response_text}"  # Add this line

#     # Assuming the response text is a list of plant names separated by commas
#     recommended_plants = response_text.split(', ')

#     puts "Recommended plants: #{recommended_plants}"  # Add this line

#     # Get the list of plant names from the database
#     plants = Plant.all.pluck(:name)

#     # Check each recommended plant to see if it's in the list from the database
#     valid_plants = recommended_plants.select { |plant| plants.include?(plant) }

#     puts "Valid plants: #{valid_plants}"  # Add this line

#     # Respond with the valid plant names

#   end
# end


require 'openai'

class ChatController < ApplicationController
  def chat

    OpenAI.configure do |config|
      config.access_token = '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'
  end

    user_message = params[:message]
    client = OpenAI::Client.new


     response = client.chat(
    parameters: {
      model: "gpt-3.5-turbo", # Required.
      messages: [
        {
          role: "system",
          content: "You are a helpful assistant."
        },
        {
          role: "user",
          content: user_message
        }
      ],
      temperature: 0.7
  })

    response_text = response['choices'][0]['message']['content']

    # Assuming the response text is a list of plant names separated by commas
    recommended_plants = response_text.split(', ')

    # Get the list of plant names from the database
    plants = Plant.all.pluck(:name)

    # Check each recommended plant to see if it's in the list from the database
    valid_plants = recommended_plants.select { |plant| plants.include?(plant) }

    # Respond with the valid plant names
    render json: {message: valid_plants.join(', ')}
  end
end
