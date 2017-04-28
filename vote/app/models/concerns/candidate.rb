class Candidate < ApplicationRecord
   validates :name, presence: true
  has_many :logs
  def display_name
    "#{name}(#{party})"
  end  
    def votes
      #increment(:votes)
    self.vote = self.vote +1
    save
  end
end

