class String
  def tweets options={}
    return [self] if self.length <= (options[:max_length] || 140)
    prepend_pattern = options[:prepend_pattern] || /^(@[^\s]+\ ).+$/
    delimiter = options[:delimiter] || "..."
    prepend = self.match prepend_pattern
    prepend = prepend[1] if prepend
    max_length = (options[:max_length] || 140) - delimiter.length
    max_length -= prepend.length if prepend
    string = self.dup
    string = string[prepend.length..-1] if prepend
    ts = []

    until string.length <= max_length
      i = max_length - 1
      character = string[i..i]
      while !character.match(/^\s$/) and i > 0
        i -= 1
        character = string[i..i]
      end

      i = i == 0 ? (max_length - 1) : i
      t = string[0..i] + delimiter
      t = prepend + t if prepend
      ts << t
      string = string[(i+1)..-1]
    end

    unless string.empty?
      string = prepend + string if prepend
      ts << string
    end
    
    ts
  end
end
