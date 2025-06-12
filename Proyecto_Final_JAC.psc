//Proyecto Final de estudiantes:
//Junior Barrios 7690-25-16187
//Alejandro Toledo 7690-25-15213
//Cristopher Soto 7690-25-17291
Proceso Proyecto_Final_JAC
	// Significado JAC <- Junior, Alejandro y Cristopheer
	// A casi todas nuestras variables colocamos el distintivo JAC
	Definir op, jac1, jac2, resultado Como Real;
	Definir numjac Como Real;
	Definir numjac2, cantidad, mayor, menor, encima_promedionumjac, debajo_promedionumjac,i Como Entero;
	Definir suma, promedio Como Real;
		
		//Menu de opciones - JAC
		Escribir "¡¡¡Bienvenido a nuestro proyecto Final!!!";
		Escribir "Ingrese la Opcion que desee realizar";
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicación";
		Escribir "4. División";
		Escribir "5. Suma de valores de matriz";
		Escribir "6. Resta de valores de matriz";
		Escribir "7. Suma de matrices";
		Escribir "8. Resta de matrices";
		Escribir "9. Triangulo de numeros";
		Escribir "10. Rectangulo con asteriscos";
		Escribir "11. Estadisticas en una lista de Numeros";
		Leer op;
		Segun op Hacer
			1:
				Escribir "Bienvenido a Suma";
				Escribir "Ingresa el primer numero a sumar";
				Leer jac1;
				Escribir "Ingresa el segundo numero a sumar";
				Leer jac2;
				resultado<-jac1+jac2;
				Escribir "El resultado de la suma es: ", resultado;
			2:
				Escribir "Bienvenido a Resta";
				Escribir "Ingresa el primer numero a Restar";
				Leer jac1;
				Escribir "Ingresa el segundo numero a Restar";
				Leer jac2;
				resultado<-jac1-jac2;
				Escribir "El resultado de la Resta es: ", resultado;
			3:
				Escribir "Bienvenido a Multiplicación";
				Escribir "Ingresa el primer numero a Multiplicar";
				Leer jac1;
				Escribir "Ingresa el segundo numero a Multiplicar";
				Leer jac2;
				resultado<-jac1*jac2;
				Escribir "El resultado de la Multiplicación es: ", resultado;
			4:
				Escribir "Bienvenido a División";
				Escribir "Ingresa el primer numero a Dividir";
				Leer jac1;
				Escribir "Ingresa el segundo numero a Dividir";
				Leer jac2;
				resultado<-jac1/jac2;
				Escribir "El resultado de la División es: ", resultado;
			5:
				Definir tamajac, matriz, f, c, sum Como Entero;
				Escribir "Bienvenido a Suma de valores de matriz";
				Escribir "Ingresa la dimensión que deseas tu matriz";
				Leer tamajac;
				//Colocamos 2 veces la variable de tamaño "tamajac", para que tenga la misma cantidad de filas y columnas
				Dimensionar matriz[tamajac, tamajac];
				para f <- 0 Hasta tamajac-1 Con Paso 1 Hacer
					para c <- 0 hasta tamajac -1 con paso 1 Hacer
						Escribir "Ingresa el numero para tu matriz";
						Leer matriz[f, c];
					FinPara
				FinPara
				sum<-0;
				para f <- 0 Hasta tamajac -1 Con Paso 1 Hacer
					para c <- 0 hasta tamajac -1 con paso 1 Hacer
						Escribir Sin Saltar matriz[f, c], " ";
						sum<-sum+matriz[f, c];
					FinPara
					Escribir " ";
				FinPara
				Escribir "La suma de la matriz es: ", sum;
			6:
				Definir tamajac, f, c, matriz, resta Como Entero;
				Escribir "Bienvenido a resta de valores de matriz";
				Escribir "Ingrese la dimensión que desee su matriz";
				Leer tamajac;
				Dimensionar matriz[tamajac, tamajac];
				Para f<-0 Hasta tamajac -1 Con Paso 1 Hacer
					para c <- 0 hasta tamajac -1 Con Paso 1 Hacer
						Escribir "Ingresa el numero para tu matriz";
						Leer matriz[f, c];
					FinPara
				FinPara
				resta<-0;
				Para f<-0 hasta tamajac -1 Con Paso 1 Hacer
					para c<-0 Hasta tamajac -1 Con Paso 1 Hacer
						Escribir Sin Saltar matriz[f, c], " ";
						resta<-resta-matriz[f, c];
					FinPara
					Escribir " ";
				FinPara
				Escribir "El resultado de la resta es: ", resta;
			7:
				Escribir "Bienvenido a suma de matrices";
				Definir z, j, tama,matriz1,matriz2,matrizSuma Como Entero;
				//Para facilitar que las 2 matrices sean iguales, lo hicimos de esta manera, que el tamaño ingresado abarque las 2 matrices
					Escribir "Ingrese el tamaño para las 2 matrices: ";
					Leer tama;
					Dimensionar matriz1[tama, tama];
					Escribir "Ingrese los datos para la primera matriz:";
					Para z <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
							Leer matriz1[z, j];
						FinPara
					FinPara
					Dimensionar matriz2[tama, tama];
					Escribir "Ingrese los datos para la segunda matriz:";
					Para z <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
							Leer matriz2[z, j];
						FinPara
					FinPara
					//Creamos una 3era matriz para adjuntar la suma de las matrices
					Dimensionar matrizSuma[tama, tama];
					Para z <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
							matrizSuma[z, j] <- matriz1[z, j] + matriz2[z, j];
						FinPara
					FinPara
					Escribir "El resultado es: ";
					Para z <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
							Escribir Sin Saltar matrizSuma[z, j], " ";
						FinPara
						Escribir " ";
					FinPara
			8:
				Escribir "Bienvenido a resta de matrices";
				Definir w, j, tama,matriz1,matriz2,matrizresta Como real;
				//Para facilitar que las 2 matrices sean iguales, lo hicimos de esta manera, que el tamaño ingresado abarque las 2 matrices
				Escribir "Ingrese el tamaño para las 2 matrices: ";
				Leer tama;
				Dimensionar matriz1[tama, tama];
				Escribir "Ingrese los datos para la primera matriz:";
				Para w <- 0 Hasta tama - 1 Con Paso 1 Hacer
					Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Leer matriz1[w, j];
					FinPara
				FinPara
				Dimensionar matriz2[tama, tama];
				Escribir "Ingrese los datos para la segunda matriz:";
				Para w <- 0 Hasta tama - 1 Con Paso 1 Hacer
					Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Leer matriz2[w, j];
					FinPara
				FinPara
				//Creamos una 3era matriz para adjuntar la suma de las matrices
				Dimensionar matrizresta[tama, tama];
				Para w <- 0 Hasta tama - 1 Con Paso 1 Hacer
					Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
						matrizresta[w, j] <- matriz1[w, j] - matriz2[w, j];
					FinPara
				FinPara
				Escribir "El resultado es: ";
				Para w <- 0 Hasta tama - 1 Con Paso 1 Hacer
					Para j <- 0 Hasta tama - 1 Con Paso 1 Hacer
						Escribir Sin Saltar matrizresta[w, j], " ";
					FinPara
					Escribir " ";
				FinPara
			9:
				Escribir "Bienvenido a Triangulo de numeros";
				Definir tamajac, a, j, pira Como Entero;
				Escribir "Ingrese dimensión que desee: "; 
				Leer tamajac;
				//Colocamos un Si, para que en el caso que ingresen un numero par, imprima solo numeros pares, y en caso de ser impar solo numeros impares
				Si tamajac MOD 2 = 0 Entonces
					Para a <- 1 Hasta tamajac Con Paso 1 Hacer
						pira <- 2;
						Para j <- 1 Hasta a Hacer
							Escribir Sin Saltar pira, " ";
							pira <- pira + 2;
						FinPara
						Escribir "";
					FinPara
				SiNo
					Para a <- 1 Hasta tamajac Con Paso 1 Hacer
						pira <- 1;
						Para j <- 1 Hasta a Hacer
							Escribir Sin Saltar pira, " ";
							pira <- pira + 2;
						FinPara
						Escribir "";
					FinPara
				FinSi
			10:
				Escribir "Bienvenido a rectangulo con asteriscos";
				Definir dimenjac, j,c Como Entero;
				Escribir "Ingrese la dimensión de su resctangulo";
				Leer dimenjac;
				para j<-1 hasta dimenjac con paso 1 Hacer
					para c<-1 Hasta dimenjac  Con Paso 1 Hacer
						si j > 1 y j < dimenjac y c > 1 y c < dimenjac Entonces
							Escribir "  ", Sin Saltar;
						sino
							Escribir "* ", Sin saltar;
						FinSi
					FinPara
					Escribir "";
				FinPara
			11:
				Escribir "Biemvenido a estadistica de numeros";
				suma <- 0;
				cantidad <- 0;
				i<-0;
				encima_promedionumjac <- 0;
				debajo_promedionumjac <- 0; 
				Dimension numjac[100];
				
				Escribir "Ingrese cualquier número, puede ingresar como máximo 100 números. Escriba -1 para finalizar el proceso.";
				
				numjac2 <- 0;
				Mientras numjac2 < 100 Hacer
					Escribir "Ingrese el número ", numjac2 + 1;
					Leer numjac[numjac2];
					
					Si numjac[numjac2] = -1 Entonces 
						numjac2 <- 100;
					Sino
						suma <- suma + numjac[numjac2];
						
						Si cantidad = 0 Entonces
							mayor <- numjac[numjac2];
							menor <- numjac[numjac2];
						Sino
							Si numjac[numjac2] > mayor Entonces
								mayor <- numjac[numjac2];
							FinSi
							Si numjac[numjac2] < menor Entonces
								menor <- numjac[numjac2];
							FinSi
						FinSi
						
						cantidad <- cantidad + 1;
						numjac2 <- numjac2 + 1;
					FinSi
				FinMientras
				
				Si cantidad = 0 Entonces
					//En esta parte, si el usuario solo coloca -1 el proceso le marcará este mensaje
					Escribir "No se ingresaron números válidos.";
				Sino
					promedio <- suma / cantidad;
					Para numjac2 <- 0 Hasta cantidad - 1 Hacer;
						Si numjac[numjac2] > promedio Entonces
							encima_promedionumjac <- encima_promedionumjac + 1;
						FinSi
						Si numjac[i] < promedio Entonces
							debajo_promedionumjac <- debajo_promedionumjac + 1;
						FinSi
					FinPara
					Escribir "";
					Escribir "Resultados:";
					Escribir "Cantidad de números ingresados: ", cantidad;
					Escribir "Suma: ", suma;
					Escribir "Promedio: ", promedio;
					Escribir "Mayor: ", mayor;
					Escribir "Menor: ", menor;
					Escribir "Números por encima del promedio: ", encima_promedionumjac;
					Escribir "Números por debajo del promedio: ", debajo_promedionumjac;
			FinSi
	FinSegun
FinProceso
