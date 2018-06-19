require "http"


module Sogou
    module Translate
        @API_BASE = "https://fanyi.sogou.com/reventondc/translate"

        def self.translate(text)
            res = HTTP.post(@API_BASE, :form => {
                :from => "auto",
                :text => text,
            }).body.to_s
            rv = JSON.parse(res)
            return rv
        end
    end
end
