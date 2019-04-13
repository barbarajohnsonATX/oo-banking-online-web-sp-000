require 'pry'

class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status, :amount, :last_transaction
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount 
    @last_transaction = self 
  end 
  
  def valid?
    if @sender.valid? && @receiver.valid? 
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction 
    binding.pry 
    valid = self.valid?
    if !@sender.valid?
      return "Transaction rejected. Please check your account balance."
    else @last_transaction != self 
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
    end 
  end 
  
end
