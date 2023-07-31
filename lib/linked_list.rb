require './lib/node'

class LinkedList
  attr_reader :head, :tail
	def initialize(first_component = nil)
	  @head = first_component
		@tail = nil
	end

	def append(data)
		node = Node.new(data)
		if @head == nil
			@head = node
			@tail = @head
		else
			@tail.next_node = node
			@tail = node
		end
	end

	def count
		counter = 1
		current_node = @head
		while current_node.next_node != nil
		  current_node = current_node.next_node
		  counter += 1
		end
    counter
	end

	def to_string
		string = ""
		current_node = @head
		count.times do
			string += "#{current_node.data} "
			current_node = current_node.next_node
		end
		string.strip
	end

	def prepend(data)
		node = Node.new(data)
		node.next_node = @head
		@head = node
	end

	def insert(index, data)
		node = Node.new(data)
		last_node = @head
		current_node = @head
		index.times do
			last_node = current_node
			current_node = current_node.next_node
		end
		last_node.next_node = node
		node.next_node = current_node
	end
end