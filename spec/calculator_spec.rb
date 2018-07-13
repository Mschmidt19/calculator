require 'calculator'

describe Calculator do
  describe '#add'do
    it 'responds to method "add"' do
      expect(subject).to respond_to :add
    end
    it 'responds to method "add" with 2 arguments' do
      expect(subject).to respond_to(:add).with(2).arguments
    end
    it 'returns 2 when passed 1 and 1 as arguments' do
      expect(subject.add(1, 1)).to eq 2
    end
    it 'returns 3 when passed 1 and 2 as arguments' do
      expect(subject.add(1, 2)).to eq 3
    end
  end
  describe '#pretty_add' do
    it 'responds to method "pretty_add"' do
      expect(subject).to respond_to :pretty_add
    end
    it 'responds to method "add" with 2 arguments' do
      expect(subject).to respond_to(:pretty_add).with(2).arguments
    end
    it 'returns "the sum of 1 and 1 is 2" when passed 1 and 1 as arguments' do
      expect(subject.pretty_add(1, 1)).to eq 'the sum of 1 and 1 is 2'
    end
    it 'returns "the sum of 1 and 2 is 3" when passed 1 and 2 as arguments' do
      expect(subject.pretty_add(1, 2)).to eq 'the sum of 1 and 2 is 3'
    end
  end
  describe '#add_many' do
    it 'responds to the method "add_many"' do
      expect(subject).to respond_to :add_many
    end
    it 'responds to the method "add_many" with 1 argument (an array)' do
      expect(subject).to respond_to(:add_many).with(1).argument
    end
    it 'returns 7 when passed [4, 2, 1]' do
      expect(subject.add_many([4, 2, 1])).to eq 7
    end
    it 'returns 28 when passed [4, 8, 3, 7, 2, 0, 4]' do
      expect(subject.add_many([4, 8, 3, 7, 2, 0, 4])).to eq 28
    end
  end
  describe '#puts_pretty_add' do
    it 'responds to the method "puts_pretty_add"' do
      expect(subject).to respond_to :puts_pretty_add
    end
    it 'responds to the method "puts_pretty_add"' do
      expect(subject).to respond_to(:puts_pretty_add).with(2).arguments
    end
    it 'puts "3" when passed 1 and 2 as arguments' do
      expect{subject.puts_pretty_add(1, 2)}.to output("the sum of 1 and 2 is 3\n").to_stdout
    end
    it 'puts "8" when passed 3 and 5 as arguments' do
      expect{subject.puts_pretty_add(3, 5)}.to output("the sum of 3 and 5 is 8\n").to_stdout
    end
  end
end
