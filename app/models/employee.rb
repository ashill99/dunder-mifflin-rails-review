class Employee < ApplicationRecord
    belongs_to :dog 
    validates :title, uniqueness: true
    validates :alias, uniqueness: true



    def name
        self.first_name + " " + self.last_name
    end 

    private 

    # def is_unique
    #     Employee.all.any? do  |employee| 
    #         if employee.alias != self.alias || employee.title != self.title
    #         end 
    #     end 
    # end 
    
end 