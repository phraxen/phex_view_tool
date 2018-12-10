module PhexViewTool
  class Error < StandardError; end
  class Renderer
    def self.copyright name, msg, year_created = nil
      year_now = Time.now.year
      if year_created.nil? || year_created >= year_now
        "&copy; #{year_now} | <b>#{name}</b> #{msg}".html_safe
      else
        "&copy; #{year_created} - #{year_now} | <b>#{name}</b> #{msg}".html_safe
      end
    end
  end
end
