class EmailAddressParser
  
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    email_array = []
    @email_addresses.split.each do |address|
      email_array.push(address.delete_suffix(","))
    end
    email_array.uniq
  end

end