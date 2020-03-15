// LINKED LIST

// Creating nodes
class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
    }
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)

node1.next = node2

// Linking nodes together
class LinkedList {

    var head: Node?

    init(head: Node?) {
        self.head = head
    }
}


// Appending node to the end of the list.
func append(_ node: Node) {

    guard head != nil else {
        head = node
        return
    }

    var current = head
    while let _ = current?.next {
        current = current?.next
    }
    current?.next = node
}

// Getting a node
func getNode(atPosition position: Int) -> Node? {
    guard position > 0 else {
        return nil
    }

    var counter = 1
    var current = head

    while current != nil && counter <= position {
        if counter == position {
            return current
        }
        current = current?.next
        counter += 1
    }
    return nil
}

// Inserting a node
func insertNode(_ node: Node, at position: Int) {
    guard position > 0 else {
        return
    }

    var counter = 1
    var current = head

    if position > 1 {
        while current != nil && counter < position {
            if counter == position - 1 {
                node.next = current?.next
                current?.next = node
                break
            }
            current = current?.next
            counter += 1
        }
    } else if position == 1 {
        node.next = head
        head = node
    }
}

// Deleting a node
func deleteNode(withValue value: Int) {
    var current = head
    var previous: Node?

    while current?.value != value && current?.next != nil {
        previous = current
        current = current?.next
    }

    if current?.value == value {
        if previous != nil {
            previous?.next = current?.next
        } else {
            head = current?.next
        }
    }
}

