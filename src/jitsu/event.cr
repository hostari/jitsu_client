module Jitsu
  class Event
    def self.create(body : Hash(String, JSON::Any), client : Client)
      client.post("/api/v1/s2s/event", body: body)
    end
  end
end
