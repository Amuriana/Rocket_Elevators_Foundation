require 'rspec/core'
require 'Cat'

describe Cat do
    
     describe '#meow' do
        it 'returns the "mew"' do
        expect(subject.meow).to  eql('mew')
   
            
        end
    
    end

    describe '#hungry?' do
        it 'returns true if hunger_level is more than 5' do
            hungry_cat = Cat.new(hunger_level: 7)
            
        end
        
    end

end
