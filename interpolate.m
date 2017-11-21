function [x] = interpolate(targety,xdata,ydata)

%targety is the y value of the point which you want to find the X-value for
%xdata is the array of all X-data
%ydata is the array of all Y-data

%NOTE! this works for descending points only - switch the less than to greater than to
%interpolate increasing arrays
for i = 1:length(ydata)
    if ydata(i)<=targety %here
        secondypt = ydata(i);
        firstypt = ydata(i-1);
        secondxpt = xdata(i);
        firstxpt = xdata(i-1);
    break
    end
end

yinterval = linspace(firstypt,secondypt,1000);
xinterval = linspace(firstxpt,secondxpt,1000);
    
for j = 1:length(yinterval)
    if yinterval(j)<=targety %and here
        x = xinterval(j);
        break
    end
end

end