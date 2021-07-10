class DataModel
    
    attr_reader :id, :words, :word_weight

    def initialize(id,words)
        @id = id
        @words = words
        @word_weight = {}
    end

    def assign_weights(max)
        # assigns weight to each work based on max number of words
        for word in words
            if word_weight[word].nil?
                word_weight[word] = max
                max = max - 1
            end
        end
    end
end