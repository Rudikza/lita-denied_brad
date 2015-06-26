module Lita
  module Handlers
    class DeniedBrad < Handler
      route(/./, :no_brad)

      def no_brad(request)
        return unless request.user.mention_name == "brad"

        request.reply_with_mention("Denied!!!")
      end
    end

    Lita.register_handler(DeniedBrad)
  end
end