module Jitsu
  class Event
    # Creates a Jitsu event.
    # See: https://jitsu.com/docs/sending-data/api
    def self.create(body : String, client : Client)
      client.post("/api/v1/s2s/event", body: body)
    end
  end
end
