require './lib/node'

describe Node do
  before (:each) do
		@node = Node.new('plop')
	end

	it 'exists' do
		expect(@node).to be_an_instance_of(Node)
	end

	it 'holds data' do
		expect(@node.data).to eq('plop')
	end

	it 'has no next node on initialization' do
		expect(@node.next_node).to be_nil
	end
end