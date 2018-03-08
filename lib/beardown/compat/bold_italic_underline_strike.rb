module Beardown
  class Document
    START_CHAR_BOLD = "*"
    START_CHAR_ITALIC = "*"
    START_CHAR_UNDERLINE = "~"
    START_CHAR_STRIKE = "~"

    REGEXP_BOLD = /\*\*(.+)\*\*/
    REGEXP_ITALIC = /\*(.+)\*/
    REGEXP_STRIKE = /\~\~(.+)\~\~/
    REGEXP_UNDERLINE = /\~(.+)\~/
  end
end
