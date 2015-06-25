module Lita
  module Handlers
    class DeniedBrad < Handler
       route(/./, :no_brad)
    end

    def no_brad
      return unless request.user.mention_name == "brad"

      request.reply_with_mention("Denied Brad!"
    end
    Lita.register_handler(DeniedBrad)
  end
end
