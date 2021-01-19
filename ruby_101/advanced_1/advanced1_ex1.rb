
# at the top of file

require 'yaml'

WORDS = YAML.load_file('mad_libs.yml')


noun = WORDS['nouns'][rand(0..7)]

adjective = WORDS['adjectives'][rand(0..7)]

verb = WORDS['verbs'][rand(0..7)]

adverb = WORDS['adverbs'][rand(0..7)]

p "The #{adjective} #{noun} #{adverb} #{verb} on the floor."