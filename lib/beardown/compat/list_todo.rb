module Beardown
  class Document
    REGEXP_LIST_TODO = /^(\t*) *\- \[([ x])\]\s+(.+)\n?/

    def scan_list_todo(s)
      t_count = s[1].length
      check_status = case s[2]
                     when " " then "uncheck"
                     when "x" then "checked"
                     end
      content = s[3]

      #fail "fuck"+REGEXP_LIST_TODO.to_s

      ex_svg = :add_extension_todo_svg
      @extensions << ex_svg unless @extensions.include? ex_svg

      convert_list_todo(t_count, check_status, content)
    end

  end
end