%Denavit_Hartenberg

startup_rvc
dh = [0 -pi/2 0 0 -pi/2 0;0 0 1 1 0 0;0 0 0 0 0 0;1 0 0 0 0 1];
R = SerialLink(dh);
q = [0 0 0 0];
R.plot(q)
