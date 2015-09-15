module FormHelper
  def setup_client(client)
    client.addresses ||= Address.new
    client.phones ||= Phone.new
    client.emails ||= Email.new
    client
  end
end