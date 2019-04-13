class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status, :amount 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end 
  
  def valid?
    if @sender.valid? && @receiver.valid? 
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction 
    valid = self.valid?
    if !valid 
      return "Transaction rejected. Please check your account balance."
    end 
  end 
  
end
