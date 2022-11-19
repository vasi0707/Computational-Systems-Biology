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

x = []
y = []
for i in range(len(node1)):
    if((node1[i]=='PIK3R1') or (node1[i]=='STAT5B') or (node1[i]=='TINF2') or (node1[i]=='SNAI1') or (node1[i]=='GNAT2') or (node1[i]=='SPDEF') or (node1[i]=='OR5A2') or (node1[i]=='MLL3') or (node1[i]=='ATP4A') or (node1[i]=='SEC11A') or (node1[i]=='RAD21') or (node1[i]=='C1QTNF5') or (node1[i]=='CELSR1') or (node1[i]=='MARS') or (node1[i]=='DTX4') or (node1[i]=='PRPF3') or (node1[i]=='FUT1') or (node1[i]=='SP110') or (node1[i]=='LRAT') or (node1[i]=='REXO2') or (node1[i]=='SERPINB3')):
        x.append(i)
    if((node2[i]=='PIK3R1') or (node2[i]=='STAT5B') or (node2[i]=='TINF2') or (node2[i]=='SNAI1') or (node2[i]=='GNAT2') or (node2[i]=='SPDEF') or (node2[i]=='OR5A2') or (node2[i]=='MLL3') or (node2[i]=='ATP4A') or (node2[i]=='SEC11A') or (node2[i]=='RAD21') or (node2[i]=='C1QTNF5') or (node2[i]=='CELSR1') or (node2[i]=='MARS') or (node2[i]=='DTX4') or (node2[i]=='PRPF3') or (node2[i]=='FUT1') or (node2[i]=='SP110') or (node2[i]=='LRAT') or (node2[i]=='REXO2') or (node2[i]=='SERPINB3')):
        y.append(i)

for i in range(len(x)):
    for j in range(len(y)):
        if(x[i]==y[j]):
            print(x[i])

