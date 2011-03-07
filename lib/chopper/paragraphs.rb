class String
  def paragraphs
    split /\n+/
  end

  def each_paragraph
    paragraphs.each { |paragraph| yield paragraph }
  end
end
