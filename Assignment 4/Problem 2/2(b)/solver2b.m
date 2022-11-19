%initialising time and initial conditions
time = [1:1000];
initial = [0.1;10;0.1;10];
%ode solver
[t,y] = ode45(@(t,y) simul2b(t,y),time,initial);
%ploting graph
plot(t,y(:,1));
hold on
plot(t,y(:,2));
hold on
plot(t,y(:,3));
hold on
plot(t,y(:,4));
xlabel("time");
ylabel("gene expression");
title("4 node repressilator");
%adding legends
legend('gene A','gene B','gene C','gene D')