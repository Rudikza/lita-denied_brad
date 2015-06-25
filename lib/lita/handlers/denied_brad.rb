module Lita
  module Handlers
    class DeniedBrad < Handler
      route(/./, :no_brad)

      def no_brad
        return unless request.user.mention_name == "rudi"

        request.reply_with_mention("Denied Brad!")
      end
    end
  end

  Lita.register_handler(DeniedBrad)
end
