require 'pry'

class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status, :amount
  @@all = []
  
  
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
    if !@sender.valid? || !self.valid?
      return "Transaction rejected. Please check your account balance."
    else
      if !@@all.include?(self)
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
      @@all << self 
    end 
    end 
  end 
  
end
