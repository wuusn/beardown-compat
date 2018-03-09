module Beardown
  class Document
    START_CHAR_BOLD = "*"
    START_CHAR_ITALIC = "*"
    START_CHAR_UNDERLINE = "~"
    START_CHAR_STRIKE = "~"

    REGEXP_BOLD = /\*\*(.*?[^\s])\*\*/
    REGEXP_ITALIC = /\*(.*?[^\s])\*/
    REGEXP_STRIKE = /\~\~(.*?[^\s])\~\~/
    REGEXP_UNDERLINE = /\~(.*?[^\s])\~/
  end
end
