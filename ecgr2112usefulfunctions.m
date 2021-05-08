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