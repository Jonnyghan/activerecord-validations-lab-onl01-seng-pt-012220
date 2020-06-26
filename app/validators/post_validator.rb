class PostValidator < ActiveModel::Validator
    
    def validate(record)
        #binding.pry
        if !record.title.include?("Won\'t Believe" || "Secret" || "Top [number]" || "Guess")
            record.errors[:title] << "Invalid title! Make it clickbait!"
        else
            true
        end
    end
end
