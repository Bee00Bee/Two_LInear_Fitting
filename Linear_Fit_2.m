xdata = linspace(-2,3,101);
ydata = log(abs(10./(10+1i*10.^xdata))) + 0.5*randn(size(xdata));
plot(xdata,ydata)
F = @(B,xdata) min(B(1),B(2)+B(3)*xdata);   %Form of the equation
IC = [max(ydata) max(ydata) 0]; %Initial guess
B = lsqcurvefit( F,IC,xdata,ydata,[min(ydata) -inf -inf],[max(xdata) inf 0]);
hold all;
plot(xdata,F(B,xdata));
a = (B(1) - B(2)) / B(3)
cte = B(1)
c = B(2)
d = B(3)