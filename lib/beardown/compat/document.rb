module Beardown
  class Document
    def initialize(text)
      @text = text

      @blocks = [:head, :line_separator, :list_todo,
                 :list_unordered, :list_ordered, :quote, :codeblock,
                 :asset, :blankline, :p]
      @spans  = [:codespan, :hashtag_full, :hashtag_full_nospace, :hashtag, :linkpost, :linkurl,
                 :bold, :italic, :strike, :underline, :mark_nospace, :mark]

      @extensions = Array.new
      @title = String.new
      @tags = Array.new

      html
    end
  end
end
