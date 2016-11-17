require('sinatra')
require('sinatra/reloader')
require('./lib/find')
also_reload('lib/**/*.rb')
get('/form') do
  erb(:form)
end

post('/replace') do
  sentence = params.fetch('sentence')
  word_find = params.fetch('word_find')
  word_replace = params.fetch('word_replace')
  @silly_sentence = sentence.findandreplace(word_find, word_replace)
  erb(:replace)
end
