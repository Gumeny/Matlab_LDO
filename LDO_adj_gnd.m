U2 = 5;
U2_2 = 7;
U2_3 = 10;
I2 = linspace(0.01,0.5,30)
U_drop = 0.2;
I_gnd = 0.001;
I_adj = 0.001;
R1 = 1000;
R2 = 2000;

I_R1 = (U2+I_adj.*R2)./(R1+R2);
I_R2 = (-R1*I_adj+U2)./(R1+R2);
P2 = U2.*I2;
P_drop = U_drop*(I2+I_R1);
P_div = R1*(I_R1)^2+R2*(I_R2)^2;
P_gnd = I_gnd*(U2+U_drop);
P1 = P2 + P_drop + P_gnd + P_div;

eta = P2./P1;
%eta2 = (U2_2.*I2)./(U2_2.*I2+U_drop.*I2+I_gnd.*(U2_2+U_drop));
%eta3 = (U2_3.*I2)./(U2_3.*I2+U_drop.*I2+I_gnd.*(U2_3+U_drop));
hold on;
plot(I2,eta);
%plot(I2,eta2);
%plot(I2,eta3);
xlabel('{\it I2} [A]');
ylabel('{\it \eta} [-]');
legend('{\it v}_1^{*}', '{\it v}_1');
title('Ucinnost LDO topologie adjustable grounded');
hold off;