#require 'Send_SMS/SMS'

class Elevator < ApplicationRecord
    belongs_to :column
#twilio
  #  after_save :send_sms

   # def send_sms
     #   if (self.saved_change_to_status? && self.status == "intervention")
     #       sms = SendSms::Sms.new
     ##       sms.send_sms(self.id, self.column.battery.building.id, self.status)
      ##  end
   # end    
 #twilio   
 
    def intervention?
      self.status == "Intervention"
    end
end 

