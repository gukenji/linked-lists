class LinkedList
    attr_accessor :head, :tail, :next_node
    def initialize
        @head = nil
        @tail = nil
    end


    def append(node)
        if @head == nil
            @head = node
            @tail = node
        else
            @tail.next_node = node
            @tail = node
        end
    end

    def prepend(node)
        if @head == nil
            @head = node
            @tail = node
        else
            node.next_node = @head
            @head = node
        end
    end

    def size
        counter = 0
        node = @head
        until node == nil
            node = node.next_node
            counter += 1
        end
        counter
    end

    def head
        puts @head
    end

    def tail
        puts @tail
    end

    def at(index)
        node = @head
        index.times do 
            node = node.next_node
            node != nil ? next : break
        end
        node
    end

    def pop
        node = @head
        until node.next_node == @tail
            node = node.next_node
        end
        node.next_node = nil
        @tail = node
        node
    end

    def contains?(value)
        result = false
        node = @head
        if node.data == value
            result = true
        else
            until node.next_node == nil || node.data == value
            node = node.next_node
            node.data == value ? result = true : next
            end
        end
        result
    end

    def find(value)
        node = @head
        if contains?(value) == true
            until node.data == value
                node = node.next_node
            end
            node
        else
            puts "Não existe esse dado."
        end
    end

    def to_s
        string = ""
        node_data = ""
        for i in 0..size-1
            node_data = at(i)
            node_data = node_data.data
            string << node_data << " ---> "
        end
        string << "nil"
    end


    def insert_at(value,index)

    end

    def remove_at(index)
    
    end


end

class Node 
    attr_accessor :next_node, :data
    def initialize(data = nil, next_node = nil)
        @next_node = next_node
        @data = data
    end




end


node0 = Node.new("Node0")
node1 = Node.new("Node1")
node2 = Node.new("Node2")
node3 = Node.new("Node3")
node4 = Node.new("Node4")

lista_nova = LinkedList.new
p "Node 0: #{node0}"
p "Node 1: #{node1}"
p "Node 2: #{node2}"
p "Node 3: #{node3}"
p "Node 4: #{node4}"
p "Lista: #{lista_nova}"
puts "" 

lista_nova.append(node1)
p "Lista 1o append:"
p lista_nova
puts "" 

lista_nova.append(node2)
p "================"
p "Lista 2o append:"
p lista_nova
puts "" 

lista_nova.append(node3)
p "================"
p "Lista 3o append:"
p lista_nova
puts "" 

lista_nova.prepend(node0)
p "================"
p "Lista 1o prepend:"
p lista_nova
puts "" 

lista_nova.append(node4)
p "================"
p "Lista 4o prepend:"
p lista_nova
puts "" 

puts "========= HEAD: ========"
puts lista_nova.head
puts "========= TAIL: ========"
puts lista_nova.tail
puts "========= SIZE: ========"
puts lista_nova.size
puts "========= AT: ========"
p lista_nova.at(0)
p lista_nova.at(1)
p lista_nova.at(2)
p lista_nova.at(3)
p lista_nova.at(4)
p lista_nova.at(5)
puts "========= POP ========"
p lista_nova.pop
p lista_nova
puts "========= AT: ========"
p lista_nova.at(0)
p lista_nova.at(1)
p lista_nova.at(2)
p lista_nova.at(3)
p lista_nova.at(4)
p lista_nova.at(5)
puts "========= CONTAINS: ========"
p lista_nova.contains?("Node3")
puts "========= FIND: ========"
p lista_nova.find("Node3")
puts "========= TO_S: ========"
p lista_nova.to_s

puts "================================= EXTRA ================================"
puts "========= INSERT_AT ========"
lista_nova.insert_at("teste",1).class
