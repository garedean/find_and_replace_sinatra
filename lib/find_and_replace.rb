class String
  define_method(:find_and_replace) do |target, substitute|
    self.gsub(target, substitute)
  end
end
