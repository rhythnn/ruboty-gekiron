module Ruboty
  module Handlers
    class Gekiron < Base
      on(
        /topic|gekiron|激論/,
        name: 'topic',
        description: '激論しそうな話題を返します',
      )

      on(
        /gekiron/,
        name: 'topic',
        description: '激論しそうな話題を返します',
        all: true
      )

      def topic(message)
        Ruboty::Gekiron::Actions::Topic.new(message).call
      end
    end
  end
end
