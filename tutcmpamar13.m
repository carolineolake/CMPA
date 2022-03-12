%Caroline Deluce
%101041614
%Tutorial due March 13th
%CIMPA
%Matlab 2020b




%PLEASE READ Some of them don't display all at once well, so you can
%comment out everything else when running each task section


clear;
clc;
close all; 

%Varible delcariation
is = 0.01e-12;
ib = 0.1e-12;
vb = 1.3;
gp = 0.1;
stepSize = 201;
V = linspace(-1.95,0.7,stepSize);

%First I vector
I = is*(exp((1.2*V)/0.025)-1) + gp*V - ib*(exp((-1.2*(V+vb))/0.025)-1);


%This section adds the 20% noise 

new = randn(stepSize,1)*0.2;

for i = 1:201

    I2(i) = new(i)*I(i) + I(i);

end

%Task 1
nexttile
plot(V, I2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('Diode Current as a Function of Voltage "plot()"');

%Task 1
nexttile
semilogy(V, I2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('Diode Current as a Function of Voltage "semilogy()"');

% %Task 2
% p = polyfit(V,I2,4);
% x1 = linspace(-1.95,0.7);
% y1 = polyval(p,x1);
% plot(V,I2,'o')
% hold on;
% nexttile
% plot(x1,y1);
% hold off;
% xlabel('Voltage (V)');
% ylabel('Current (A)');
% title('Diode Current as a Function of Voltage 4th Poly');

%Task 2
% p = polyfit(V,I2,7);
% x1 = linspace(-1.95,0.7);
% y1 = polyval(p,x1);
% plot(V,I2,'o')
% hold on;
% nexttile
% plot(x1,y1);
% hold off;
% xlabel('Voltage (V)');
% ylabel('Current (A)');
% title('Diode Current as a Function of Voltage 7th Poly');

%Task 3

% x = linspace(-1.95,0.7,stepSize);
% A = is;
% B = gp;
% C = ib;
% D = vb;
% f0 = fittype('A.*(exp(1.2*x/25e-3)-1) + B.*x - C*(exp(1.2*(-(x+D))/25e-3)-1)');
% ff = fit(V,I,f0);
% If = ff(x);
% nexttile
% plot(If);
%xlabel('Voltage (V)');
%ylabel('Current (A)');
%title('Diode Current as a Function of Voltage Using Fittype');

%Task 4
% inputs = V.';
% targets = I.';
% hiddenLayerSize = 10;
% net = fitnet(hiddenLayerSize);
% net.divideParam.trainRatio = 70/100;
% net.divideParam.valRatio = 15/100;
% net.divideParam.testRatio = 15/100;
% [net,tr] = train(net,inputs,targets);
% outputs = net(inputs);
% errors = gsubtract(outputs,targets);
% performance = perform(net,targets,outputs);
% view(net);
% Inn = outputs;
