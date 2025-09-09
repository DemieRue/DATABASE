

raices_f1 = roots([1, -2, 1, -1]);

raices_f2 = roots([1, -1, 2, -1]);

raices_f3 = roots([1, 3, -1]);

raices_f4 = roots([1, 1]);

// Mostrar raíces
disp("Raíces f1:"); disp(raices_f1);
disp("Raíces f2:"); disp(raices_f2);
disp("Raíces f3:"); disp(raices_f3);
disp("Raíces f4:"); disp(raices_f4);

// 2. COEFICIENTES EN VECTORES
coef_f1 = [1, -2, 1, -1];
coef_f2 = [1, -1, 2, -1];
coef_f3 = [1, 3, -1];
coef_f4 = [1, 1];

disp("Coeficientes f1:"); disp(coef_f1);
disp("Coeficientes f2:"); disp(coef_f2);
disp("Coeficientes f3:"); disp(coef_f3);
disp("Coeficientes f4:"); disp(coef_f4);

// 3. EVALUAR POLINOMIOS EN PUNTOS
puntos = [1, 2, 5, -1];

// Evaluar f1 manualmente
f1_1 = 1^3 - 2*1^2 + 1 - 1;
f1_2 = 2^3 - 2*2^2 + 2 - 1;
f1_5 = 5^3 - 2*5^2 + 5 - 1;
f1_m1 = (-1)^3 - 2*(-1)^2 + (-1) - 1;
val_f1 = [f1_1, f1_2, f1_5, f1_m1];

// Evaluar f2 manualmente
f2_1 = 1^3 - 1^2 + 2*1 - 1;
f2_2 = 2^3 - 2^2 + 2*2 - 1;
f2_5 = 5^3 - 5^2 + 2*5 - 1;
f2_m1 = (-1)^3 - (-1)^2 + 2*(-1) - 1;
val_f2 = [f2_1, f2_2, f2_5, f2_m1];

// Evaluar f3 manualmente
f3_1 = 1^2 + 3*1 - 1;
f3_2 = 2^2 + 3*2 - 1;
f3_5 = 5^2 + 3*5 - 1;
f3_m1 = (-1)^2 + 3*(-1) - 1;
val_f3 = [f3_1, f3_2, f3_5, f3_m1];

// Evaluar f4 manualmente
f4_1 = 1 + 1;
f4_2 = 2 + 1;
f4_5 = 5 + 1;
f4_m1 = (-1) + 1;
val_f4 = [f4_1, f4_2, f4_5, f4_m1];

// Mostrar valores
disp("f1 en [1,2,5,-1]:"); disp(val_f1);
disp("f2 en [1,2,5,-1]:"); disp(val_f2);
disp("f3 en [1,2,5,-1]:"); disp(val_f3);
disp("f4 en [1,2,5,-1]:"); disp(val_f4);

x = -2:0.1:6;
// 4. GRÁFICAS INDIVIDUALES
// Calcular valores para graficar
y_f1 = x.^3 - 2*x.^2 + x - 1;
y_f2 = x.^3 - x.^2 + 2*x - 1;
y_f3 = x.^2 + 3*x - 1;
y_f4 = x + 1;

// Gráfica de f1
scf(0);
plot2d(x, y_f1, style=2);
xtitle("f1(s) = s³ - 2s² + s - 1");
xlabel("s");
ylabel("f1(s)");
xgrid();

// Gráfica de f2
scf(1);
plot2d(x, y_f2, style=5);
xtitle("f2(s) = s³ - s² + 2s - 1");
xlabel("s");
ylabel("f2(s)");
xgrid();

// Gráfica de f3
scf(2);
plot2d(x, y_f3, style=3);
xtitle("f3(s) = s² + 3s - 1");
xlabel("s");
ylabel("f3(s)");
xgrid();

// Gráfica de f4
scf(3);
plot2d(x, y_f4, style=4);
xtitle("f4(s) = s + 1");
xlabel("s");
ylabel("f4(s)");
xgrid();

// Gráfica compuesta
scf(4);
plot2d(x, y_f1, style=2);
plot2d(x, y_f2, style=5);
plot2d(x, y_f3, style=3);
plot2d(x, y_f4, style=4);
xtitle("Comparación de polinomios");
xlabel("s");
ylabel("f(s)");
legend(["f1(s)"; "f2(s)"; "f3(s)"; "f4(s)"]);
xgrid();
