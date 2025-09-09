function x = impulso(n0,rango)
    x=[(rango + n0)==0];
    x=double(x);
endfunction

clf;
n=-3:2;
x1=impulso(-2,n);
plot2d3 (n,x1);
scatter(n,x1);
xgrid();