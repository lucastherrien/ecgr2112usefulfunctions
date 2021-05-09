% Note: make sure to copy these to the BOTTOM of the script you are using
% Adding functions: make sure to leave a comment expaining the purpose of
% your function and showing an example of code using it. Add your name/discord username
% an author if you want. 
% Good luck on the final y'all


function a = getAngle(num)
% Author: Lucas Therrien/LazerWolf21
% getAngle(), a simpler way of doing rad2deg(angle()) for phasors
% ex:
% phasX = 10+10j;
% phi_phasX = getAngle(phasX);
% See also abs.

    a = rad2deg(angle(num));
end

function Par = par(x)
% Author: Mike/MikhailMike
% par(), function for adding parallel resistances and impedances
% ex:
% x = [10 15 12]
% xpar = par(x)
% y = [11j xpar]
% ypar = par(y)

    Par = 0;
    for i = 1:length(x)
        Par = Par + x(i)^(-1);
    end
    Par = Par^(-1);
end

function I = currDiv(current, evalElement, equiv)
% Author: Lucas Therrien
% currDiv(), function for current division
% ex:
%     I = 0.003;
%     r1 = 5;
%     req = 1.8333;
%     I1 = currDiv(I, r1, req)
    I = current*(equiv/evalElement);
end

function V = voltDiv(voltage, evalElement, equiv)
% Author: Lucas Therrien
% voltDiv(), function for voltage division
% ex:
%     V = 3;
%     r1 = 5;
%     req = 15;
%     V1 = currDiv(V, r1, req)
    V = voltage*(evalElement/equiv);
end


