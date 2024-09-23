U2 = 3.3;
I2 = linspace(0.01,0.5,30)
U_drop = 0.015;
I_adj = 0.001;
R1 = 1000;
R2 = 2000;
UB = 4.25;
IB = 0.000035;
eta = zeros(3,30);


i = 1;
while i < 4
    U2 = 3.3 + i*2;
    %I_R1 = (U2+I_adj.*R2)./(R1+R2);
    %I_R2 = (-R1*I_adj+U2)./(R1+R2);
    P2 = U2.*I2;
    P_drop = U_drop*(I2);
    %P_div = R1*(I_R1)^2+R2*(I_R2)^2;
    P_bias = UB*IB;
    P1 = P2 + P_drop + P_bias;
    eta(i,:) = P2./P1;
    i=i+1;
end



hold on;
plot(I2,eta(1,:));
plot(I2,eta(2,:));
plot(I2,eta(3,:));
xlabel('{\it I2} [A]');
ylabel('{\it \eta} [-]');
legend('U2_1', 'U2_2', 'U2_3');
title('Ucinnost LDO topologie fixed biased');
hold off;