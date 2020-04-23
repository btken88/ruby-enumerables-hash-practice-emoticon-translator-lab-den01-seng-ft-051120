# require modules here
require 'yaml'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticon_hash = {}
  # go through each emoticon to create hash with english & japanese meanings
  emoticons.each_pair do |key, value|
    emoticon_hash[key] = {english: value[0], japanese: value[1]}
  end
  emoticon_hash
end

def get_japanese_emoticon(file, emoticon)
  hash = load_library(file)
  p hash[hash.key(emoticon)]
end

def get_english_meaning
  # code goes here
end

get_japanese_emoticon('lib/emoticons.yml', "ヽ(ｏ`皿′ｏ)ﾉ")
