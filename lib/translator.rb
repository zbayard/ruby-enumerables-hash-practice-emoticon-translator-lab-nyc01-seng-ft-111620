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
  emoji_hash = {}
  emoji_hash["get_meaning"] = {}
  emoji_hash["get_emoticon"] = {}
  emoji = YAML.load_file(path)
  emoji.each do |word, emojis|
    emoji_hash["get_meaning"][emojis[1]] = word
    emoji_hash["get_emoticon"][emojis[0]] = emojis[1]
  end
  emoji_hash
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
