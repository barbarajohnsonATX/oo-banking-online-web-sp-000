class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status, :amount 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
  end 
  
  
end
