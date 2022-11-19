import matplotlib.pyplot as plt
import networkx as nx

g = nx.read_edgelist('genes_graph.txt',create_using=nx.Graph(),nodetype=str)

print(nx.info(g))

#nx.draw(g,with_labels=False)

#plt.show()
