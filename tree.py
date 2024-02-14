class CoverageTreeNode:
    def __init__(self, label, identifier=None):
        self.label = label
        self.identifier = identifier
        self.children = [] 
        self.isAccessed = False

    def printNode(self):
        print(self.label + "\n\t")
        if not self.children:
            return
        for child in self.children:
            child.printNode()

    def add_node(self,child):
        self.children.append(child) 
    
    def get_label(self):
        return self.label
    #TODO: ADD POTENTIAL CLASS METHODS HERE
