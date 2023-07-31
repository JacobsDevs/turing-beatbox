require './lib/linked_list'
require './lib/node'

describe LinkedList do
  before (:each) do 
		@linked_list = LinkedList.new
		@linked_list.append("doop")
	end
	
	it 'exists' do
    expect(@linked_list).to be_an_instance_of(LinkedList)
	end
	
	it 'appends data' do
		expect(@linked_list.head).to be_a Node
	end
  
	it 'displays appended data' do
		expect(@linked_list.head.data).to eq("doop")
	end

	it 'displays next node in list' do
    expect(@linked_list.head.next_node).to eq(nil)
	end
	
	it 'counts nodes' do
		expect(@linked_list.count).to eq(1)
	end
	
	it 'generates a string containing node data' do
    expect(@linked_list.to_string).to eq("doop")
	end
  
	it 'append additional nodes' do
		@linked_list.append("boop")
	  expect(@linked_list.tail.data).to eq("boop") 
		expect(@linked_list.head.next_node.data).to eq("boop")
	end

	it 'counts multiple nodes' do
		@linked_list.append("boop")
	  expect(@linked_list.count).to eq(2)
	end

	it 'generates a string containing all nodes data' do
	  @linked_list.append("boop")
	  expect(@linked_list.to_string).to eq("doop boop")
	end

	it 'prepends to the front of the list' do
    @linked_list.prepend("predoop")
		expect(@linked_list.to_string).to eq("predoop doop")
	end

	it 'inserts based on index and data' do
	  @linked_list.append("lastdoop")
		@linked_list.insert(1, "middoop")
		expect(@linked_list.to_string).to eq("doop middoop lastdoop")
	end

	it 'finds nodes' do
		@linked_list.append("lastdoop")
		@linked_list.insert(1, "middoop")
		expect(@linked_list.find(1, 2)).to eq("middoop lastdoop")
	end

	it 'checks if list includes specific node' do
	  @linked_list.prepend("findme")
		expect(@linked_list.includes?("findme")).to eq(true)
  end
	it 'pops the last node off the list'
end