class Intervention < ApplicationRecord
    belongs_to :author, class_name: "Employee", optional: true
    belongs_to :customer
    belongs_to :building
    belongs_to :battery, optional: true 
    belongs_to :column, optional: true
    belongs_to :elevator, optional: true
    belongs_to :employee, optional: true
    has_many :customers
  


  #after_save :create_intervention_ticket

  def create_intervention_ticket
      client = ZendeskAPI::Client.new do |config|
          config.url = ENV['ZENDESK_URL']
          config.username = ENV['ZENDESK_USERNAME']
          config.token = ENV['ZENDESK_TOKEN']
      end

      ZendeskAPI::Ticket.create!(client, 
          :subject => "Support Request For Client #{self.customer.company_name}", 
          :comment => { 
              :value => "Please take note of the following service request.\n\n
                  Customer: #{self.customer.company_name}\n
                  Building ID: #{self.building_id}\n
                  Battery ID: #{self.battery_id}\n
                  Column ID: #{self.column_id}\n
                  Elevator ID: #{self.elevator_id}\n
                  Employee: #{self.employee_id}\n
                  Description: #{self.report}"
          }, 
          :requester => { 
              "name": "#{self.author.first_name} #{self.author.last_name}", 
          },
          :priority => "normal",
          :type => "problem"
          )
  end
end

