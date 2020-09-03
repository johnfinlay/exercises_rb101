ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS = %w(fox dog head leg cat tail).freeze
VERBS = %w(spins bites licks hurdles).freeze
ADVERBS = %w(easily lazily noisily excitedly).freeze

File.open('textlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:       NOUNS.sample,
                      verb:       VERBS.sample,
                      adjective:  ADJECTIVES.sample,
                      adverb:     ADVERBS.sample)
  end
end
