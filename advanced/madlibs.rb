ADJECTIVES = ['quick', 'lazy', 'sleepy', 'ugly']
ANIMALS = ['fox', 'dog']
BODY_PARTS = ['head', 'leg']
VERBS = ['jumps', 'lifts', 'bites', 'licks']
ADVERBS = ['easily', 'lazily', 'noisily', 'excitedly']

sentence = File.read('textlibs.txt')


sentence.sub!(/adverb/i, ADVERBS.sample)
sentence.sub!(/adverb/i, ADVERBS.sample)
sentence.sub!(/verb/i, '\1' + VERBS.sample)
sentence.sub!(/verb/i, '\1' + VERBS.sample)
sentence.sub!(/animal/i, ANIMALS.sample)
sentence.sub!(/animal/i, ANIMALS.sample)
sentence.sub!(/body_part/i, BODY_PARTS.sample)
sentence.sub!(/adjective/i, ADJECTIVES.sample)
sentence.sub!(/adjective/i, ADJECTIVES.sample)

puts sentence
