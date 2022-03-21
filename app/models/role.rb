class Role < ActiveRecord::Base
    has_many :auditions
    
    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead 
        self.auditions.find do |audition|
            audition.hired == true
        end
    end

    def under_study
        filtered_actors = self.auditions.filter do |audition|
            audition.hired == true
        end
        if (filtered_actors[1])
            filtered_actors[1]
        else "No actor has been hired for this role"
        end
    end
    
end