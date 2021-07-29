class SerializableEvent < JSONAPI::Serializable::Resource
  type 'events'

  attributes :name, :date

  attribute :available_tickets do
    @object.tickets.where(sold: false).count
  end
end
