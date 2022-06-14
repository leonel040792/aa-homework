require "byebug"
class GraphNode

    attr_reader :value, :neighbors
    def initialize(val)
        @value=val
        @neighbors=[]
    end

    def neighbors=(node)
        @neighbors += node
    end

end


def bfs(starting_node, target_value)
        queue=[starting_node]

        until queue.empty?
            node=queue.shift
            return node if node.value == target_value
            queue += node.neighbors
        end
        nil
    end