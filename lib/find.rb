class String
  define_method(:findandreplace) do |word_f, word_r|
    self.downcase()
    self.gsub!(word_f, word_r)
    self
  end
end
