# require lib/emoticons.yml # require modules here



# def load_library
#   # code goes here
# end
#
# def get_japanese_emoticon
#   # code goes here
# end
#
# def get_english_meaning
#   # code goes here
# end



require 'yaml'
require 'pry'

def load_library(path)
  emoticons.each do |key, value|
      emoticon_lib[key][:english => value[0], :japanese => value[1]]
    end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
