import matplotlib.pyplot as plt
import networkx as nx

g = nx.read_edgelist('genes_graph.txt',create_using=nx.Graph(),nodetype=str)

print(nx.info(g))

r = nx.degree_pearson_correlation_coefficient(g)
print(r)
