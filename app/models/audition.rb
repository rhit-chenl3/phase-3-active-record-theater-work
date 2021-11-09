class Audition < ActiveRecord::Base
    belongs_to :role
    # Audition#role returns an instance of role associated with this audition
    # Audition#call_back will change the the hired attribute to true

    def call_back
        # self.hired = true
        update(hired: true)
    end

end