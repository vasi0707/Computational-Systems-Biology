import matplotlib.pyplot as plt
import networkx as nx

f=open('pcc_graph.txt',"r")
lines=f.readlines()
node1=[]
node2=[]
w=[]
for x in lines:
    node1.append(x.split()[0])
    node2.append(x.split()[1])
    if(x.split()[2]!='NA'):
        w.append(float(x.split()[2]))
    else:
        w.append(0.00)

g=nx.Graph()
for i in range(len(node1)):
    g.add_edge(node1[i],node2[i],weight=w[i])

print(nx.info(g))

#nx.draw(g,with_labels=False)

#plt.show()
import markov_clustering as mc
import networkx as nx
import random

# number of nodes to use
numnodes = g.number_of_nodes()

# generate random positions as a dictionary where the key is the node id and the value
# is a tuple containing 2D coordinates
positions = {i:(random.random() * 2 - 1, random.random() * 2 - 1) for i in range(numnodes)}

# use networkx to generate the graph
network = nx.random_geometric_graph(numnodes, 0.3, pos=positions)

# then get the adjacency matrix (in sparse form)
matrix = nx.to_scipy_sparse_matrix(network)

result = mc.run_mcl(matrix, inflation=5)           # run MCL with default parameters
clusters = mc.get_clusters(result)    # get clusters

#mc.draw_graph(matrix, clusters, pos=positions, node_size=50, with_labels=False, edge_color="silver")
accepted = []
for i in range(len(clusters)):
    clust = clusters[i]
    if(len(clust)>7):
        accepted.append(clust)

node_list = list(g.nodes)
chi = 0
for i in range(len(clusters)):
    abc = clusters[i]
    for j in range(len(abc)):
        if(abc[j]==353):
            print(i)
            chi=i

    

