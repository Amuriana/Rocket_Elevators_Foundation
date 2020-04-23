require 'rspec/core'
require 'http'
require 'json'
 
module ElevatorMedia
    class Streamer
        def intialize
        end
       
        def self.getContent
            
            jokes = HTTP.get("https://sv443.net/jokeapi/v2/joke/Miscellaneous?blacklistFlags=religious,racist,sexist")
            obj = JSON.parse(jokes)['setup']
            punchline = JSON.parse(jokes)['delivery']
            html = "<blockquote class='blockquote text-center'><h1>Here's a joke: <br>  #{obj} <br> #{punchline} </h1></blockquote>"
            
            return html
        end
    end
end