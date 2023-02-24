require_relative './node'

class LinkedList

    # attr_accessor :head

    def head=(node)
        @head = node
    end

    def head
        @head
    end

    def initialize
        @head = nil
    end

    def prepend(node)
        node.next_node = self.head
        self.head = node
    end

    def append(node)
        return self.head = node unless head

        last_node = head
        while last_node.next_node
            last_node = last_node.next_node
        end
        last_node.next_node = node
    end

    def delete_head
        return unless head
            self.head = self.head.next_node
    end

    def delete_tail
        return unless head
        return delete_head unless head.next_node
            last_node = head
            while last_node.next_node.next_node
                last_node = last_node.next_node
            end
            last_node.next_node = nil
    end

    def add_after(index, node)
        return prepend(node) unless head
            last_node = head
            while index > 0 && last_node.next_node
                last_node = last_node.next_node
                index -= 1      
            end
            last_node.next_node = node
    end

    def search(value)
        return unless head
            last_node = head
            while last_node
                if last_node.data == value
                    return last_node
                end
                last_node = last_node.next_node
            end
            return "not found"
    end


end
