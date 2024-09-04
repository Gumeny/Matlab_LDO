U2 = 5;
U2_2 = 7;
U2_3 = 10;
I2 = linspace(0.01,0.5,50)
U_drop = 0.2;
I_gnd = 0.001;

eta = (U2.*I2)./(U2.*I2+U_drop.*I2+I_gnd.*(U2+U_drop));
eta2 = (U2_2.*I2)./(U2_2.*I2+U_drop.*I2+I_gnd.*(U2_2+U_drop));
eta3 = (U2_3.*I2)./(U2_3.*I2+U_drop.*I2+I_gnd.*(U2_3+U_drop));
hold on;
plot(I2,eta);
plot(I2,eta2);
plot(I2,eta3);
xlabel('{\it I2} [A]');
ylabel('{\it \eta} [-]');
legend('{\it v}_1^{*}', '{\it v}_1');
title('Ucinnost LDO topologie fixed');
hold off;