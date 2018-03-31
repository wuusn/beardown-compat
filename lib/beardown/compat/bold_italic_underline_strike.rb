module Beardown
  class Document
    START_CHAR_BOLD = "*"
    #START_CHAR_ITALIC = "*"
    START_CHAR_UNDERLINE = "~"
    #START_CHAR_STRIKE = "~"

    REGEXP_BOLD = /\*\*([^\s].*?[^\s])\*\*/
    REGEXP_ITALIC = /\*([^\s].*?[^\s])\*/
    REGEXP_STRIKE = /\~\~([^\s].*?[^\s])\~\~/
    REGEXP_UNDERLINE = /\~([^\s].*?[^\s])\~/
  end
end
