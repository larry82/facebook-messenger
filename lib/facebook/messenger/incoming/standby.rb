module Facebook
  module Messenger
    module Incoming
      class Standby
        attr_reader :messaging

        def initialize(messaging)
          @messaging = messaging
        end

        def standby
          @messaging['entry']['standby']
        end

      end
    end
  end
end

# {
#   "object":"page",
#   "entry":[
#     {
#       "id":"<PAGE_ID>",
#       "time":1458692752478,
#       "standby":[
#         {
#           "sender":{
#             "id":"<USER_ID>"
#           },
#           "recipient":{
#             "id":"<PAGE_ID>"
#           },

#           ...
#         }
#       ]
#     }
#   ]
# }
