Proceso Evaluacion
	
	definir opcion,numeross,totalsuma,MatrizTresNumeros,i,resultadoTresNumeros,numeroelegido,nnumeross,Nnumeros,j,h,cantnum,numm,matriznumeros como entero;
	definir genero,nombre,aQueBano,opcionBanoDucha,aQueBano2,mostrarEnPantalla,dieznombres,nombresDiez Como Caracter;
	dimension MatrizTresNumeros[3];
	
	escribir "**MENU**";
	escribir "1.-Secuencial:";
	escribir "2.-Condicional Si entonces:";
	escribir "3.-Condicional Si entonces anidado:";
	escribir "4.-Condicional segun:";
	escribir "5.-Repetitiva Mientras:";
	escribir "6.-Repetitiva repetir:";
	escribir "7.-Repetitiva Para:";
	escribir "8.-Arreglo Simple:";
	escribir "9.-Arreglo Bidimensional:";
	escribir "10.-Sali";
	escribir "**Seleccione una opcion**";
	leer opcion;
	
	si opcion>=1 y opcion<=10 entonces
		segun opcion hacer
		1:
			escribir "Ingrese tres numeros para conocer su promedio";
			para i<-0 hasta 2 hacer
				leer Numeross;
				MatrizTresNumeros[i]<-numeross;
			FinPara
			resultadoTresNumeros<-TresNumeros(MatrizTresNumeros);
		2:
			Escribir "Ingrese Nombre y genero de la persona:";
			leer nombre;
			leer genero;
			escribir "La persona ",nombre;
			aQueBano<-SegunGenero(genero);
		3:
			Escribir "Ingrese Nombre y genero de la persona:";
			leer nombre;
			leer genero;
			escribir "Desea utilizar el bano o la ducha?";
			leer opcionBanoDucha;
			escribir "La persona ",nombre;
			aQueBano2<-SegunGenero2(genero,opcionBanoDucha);
		4:
			escribir "Ingrese un nunero entre 1 y 10";
			leer numeroelegido;
			mostrarEnPantalla<-numeroAeleccion(numeroelegido);
		5:
			totalsuma<-0;
			repetir 
				escribir "Ingresa cuantos numeros deseas calcular o ingresa cero para salir";
				leer Nnumeros;
				Dimension matrizNumeros[nnumeros];
				mientras nnumeros<>0 hacer
				escribir "Ingresa los numeros a calcular o cero para salir";
					para i<-0 hasta nnumeros-1 Hacer
						leer nnumeross;
						matrizNumeros[i]<-nnumeross;
					FinPara
					escribir "Los numeros ingresados fueron: ";
					para h<-0 hasta nnumeros-1 hacer
						escribir sin saltar " [",matriznumeros[h],"] ";	
					finpara
					
				FinMientras
			hasta que nnumeros=0
		6:	
			nombresConJ;
		7:
			dimension nombresDiez[10];
			escribir "Ingrese 10 nombres";
		para i<-0 hasta 9 Hacer
			
			leer dieznombres;
				nombresDiez[i]<-dieznombres;
				para j<-0 hasta 9 Hacer
					si nombresDiez[i]<>nombresDiez[j] Entonces
						escribir "El nombres ",nombresdiez[j]," ya existe";
					SiNo
						escribir "Los nombres no estan repetidos";
					FinSi
				FinPara
		finpara
		FinSegun
	SiNo
		escribir "Lo siento, debe seleccionar una opcion entre 1 y 10.";
	FinSi
	
FinProceso

funcion resultadoTresNumeros<-TresNumeros(n1)
	definir resultado,SumaParcial,Sumatotal,i,SumaTotalTresNumeros,j,h como entero;
	
	para i<-0 hasta 0 hacer
		SumaParcial<-n1[i];
		para j<-1 hasta 1 hacer
			SumaTotal<-sumaParcial+n1[j];
			Para h<-2 hasta 2 Hacer
				SumaTotalTresNumeros<-Sumatotal+n1[h];
			FinPara
		FinPara
	FinPara
	Escribir "El promedio es: ",SumatotalTresNumeros/3;
	
FinFuncion

funcion aQueBano<-SegunGenero(n1)
	
	si longitud(n1)=5 Entonces
		escribir "Debe dirigirse al bano de MUJERES. Gracias";
	SiNo
		escribir "Debe dirigirse al bano de HOMBRES. Gracias";
	FinSi
FinFuncion

funcion aQueBano2<-SegunGenero2(n1,n2)
	
	si longitud(n1)=5 Entonces
		escribir "Debe dirigirse al bano de MUJERES. Gracias";
		si Longitud(n2)=4 entonces
			escribir "Ademas debe pagar $250 por uso de bano";
		SiNo
			escribir "Ademas debe pagar $2.500 por uso de ducha";
		FinSi
	SiNo
		escribir "Debe dirigirse al bano de HOMBRES. Gracias";
		si Longitud(n2)=4 entonces
			escribir "Ademas debe pagar $250 por uso de bano";
		SiNo
			escribir "Ademas debe pagar $2.500 por uso de ducha";
		finsi
	FinSi
FinFuncion

funcion mostrarEnPantalla<-numeroAeleccion(n1)
	
	segun n1 hacer
	1:
		escribir "Escribio el numero UNO";
	2: 
		escribir "Escribio el numero DOS";
	3:
		escribir "Escribio el numero TRES";
	4:
		escribir "Escribio el numero CUATRO";
	5:
		escribir "Escribio el numero CINCO";
	6:
		escribir "Escribio el nunmero SEIS";
	7:
		escribir "Escribio el numero SIETE";
	8:
		escribir "Escribio el numero OCHO";
	9:
		escribir "Escribio el numero NUEVE";
	10: 
		escribir "Escribio el numero DIEZ";
	De Otro Modo:
		escribir "Debe ingresar un numero entre 1 y 10";
	FinSegun
FinFuncion

funcion nombresConJ()
	definir intentos como entero;
	definir ganar como logico;
	definir nombress Como Caracter;
	
	intentos<-0;
	repetir
		escribir "Ingrese nombres con J";
		leer nombress;
		si nombress="juan" o nombress="JUAN" o nombress="Juan" entonces 
			ganar<-verdadero;
			escribir "Muy bien, GANASTE!!!";
			escribir "Con un total de ",intentos," intentos";
		SiNo
			ganar<-falso;
			escribir "Sigue intentando";
			intentos<-intentos+1;
		Finsi
	hasta que ganar=verdadero
FinFuncion


