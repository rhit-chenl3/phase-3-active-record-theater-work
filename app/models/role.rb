class Role < ActiveRecord::Base
    has_many :auditions
    # Role#auditions returns all of the auditions associated with this role
    # Role#actors returns an array of names from the actors associated with this role
    # Role#locations returns an array of locations from the auditions associated with this role
    # Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
    # Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
    
    # def auditions
    #     self.auditions.all
    # end

    def actors
        self.auditions.map{|audition| audition.actor}
    end

    def locations
        self.auditions.map{|audition| audition.location}
    end

    def lead
        # self.auditions.where(hired: true).first ? self.auditions.where(hired: true).first : 'no actor has been hired for this role'
        self.auditions.where(hired: true).first || 'no actor has been hired for this role'
    end

    def understudy
        # self.auditions.where(hired: true).second ? self.auditions.where(hired: true).second : 'no actor has been hired for understudy for this role'
        self.auditions.where(hired: true).second || 'no understudy has been hired for this role'
    end

end