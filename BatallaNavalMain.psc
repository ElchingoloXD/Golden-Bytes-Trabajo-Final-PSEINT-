//Usaremos este archivo para nuestro trabajo





Proceso BatallaNavalMain
	//ESTAS VARIABLES  O AL MENOS LAS MATRIZ JUGADOR Y ENEMIGO VAN A TENER QUE SER PASAR POR REFERENCIA a los otrso sub algoritomos
	Definir matrizJugador Como Entero;
	Dimension matrizJugador[11,11];
	Definir nombre_jugador Como Caracter;
	Definir matrizEnemigo Como Entero;
	Dimension matrizEnemigo[11,11];
	
	//mensajeAmpliarPantalla();
	//Borrar Pantalla;
	//textoEstatico();
	//Borrar Pantalla;
//	Animacion();
//	Borrar Pantalla;
	MensajeBienvenida(Nombre_Jugador);
	Borrar Pantalla;
	mostrarTableroJugador(matrizJugador);
	Borrar Pantalla;
	IngresarPosicionBarcoJugador(matrizJugador);
	colocar_barcos_enemigo(matrizEnemigo);
	//mostrarMatrizEnemigo(matrizEnemigo);
	mostrarTableroJugadorEnemigo(matrizJugador, matrizEnemigo);
	//Coordenadas();
	//Mostrar mensaje de agradecimiento al final del juego
	finDelJuego(nombre_jugador);
	
FinProceso

SubAlgoritmo mensajeAmpliarPantalla
	
	Definir tecla Como Caracter;
	Escribir "                    PARA UNA MEJOR EXPERIENCIA DE JUEGO";
	Escribir "                 ABRA A PANTALLA COMPLETA Y PRESIONE ENTER";
	Leer TECLA;
	
FinSubAlgoritmo



// Eset subproceso es una animacion que muestra el nombre de nuestro juego
SubProceso Animacion
	
	Definir logo Como caracter;
	Definir i,j Como Entero;
	Definir tecla Como Caracter;
	
	Dimension logo[24];	// Definimos un arreglo que contenga los caracteres que formaran la animacion
	
	// cargamos manualmente el arreglo para lograr el efecto deseado
	
	logo[1] <- "      8 888888888o           .8.    8888888 8888888888    .8.          8 8888         8 8888                  .8.";          
	logo[2] <- "      8 8888    `88.        .888.         8 8888         .888.         8 8888         8 8888                 .888.";         
	logo[3] <- "      8 8888     `88       :88888.        8 8888        :88888.        8 8888         8 8888                :88888.";        
	logo[4] <- "      8 8888     ,88      . `88888.       8 8888       . `88888.       8 8888         8 8888               . `88888.";       
	logo[5] <- "      8 8888.   ,88?     .8. `88888.      8 8888      .8. `88888.      8 8888         8 8888              .8. `88888.";      
	logo[6] <- "      8 8888888888      .8`8. `88888.     8 8888     .8`8. `88888.     8 8888         8 8888             .8`8. `88888.";     
	logo[7] <- "      8 8888    `88.   .8? `8. `88888.    8 8888    .8? `8. `88888.    8 8888         8 8888            .8? `8. `88888.";    
	logo[8] <- "      8 8888      88  .8?   `8. `88888.   8 8888   .8?   `8. `88888.   8 8888         8 8888           .8?   `8. `88888.";   
	logo[9] <- "      8 8888    ,88? .888888888. `88888.  8 8888  .888888888. `88888.  8 8888         8 8888          .888888888. `88888.";  
	logo[10]<- "      8 888888888P  .8?       `8. `88888. 8 8888. 8?       `8. `88888. 8 888888888888 8 888888888888 .8?       `8. `88888.";
	logo[11]<- "                                    ";
	logo[12]<- "                                    ";
	logo[13]<- "                                    ";
	logo[14]<- "                                                                    b.             8            .8.   `8.`888b           ,8?   .8.            8 8888";
	logo[15]<- "                                                                    888o.          8           .888.   `8.`888b         ,8?   .888.           8 8888";
	logo[16]<- "                                                                    Y88888o.       8          :88888.   `8.`888b       ,8?   :88888.          8 8888";
	logo[17]<- "                                                                    .`Y888888o.    8         . `88888.   `8.`888b     ,8?   . `88888.         8 8888";
	logo[18]<- "                                                                    8o. `Y888888o. 8        .8. `88888.   `8.`888b   ,8?   .8. `88888.        8 8888";
	logo[19]<- "                                                                    8`Y8o. `Y88888o8       .8`8. `88888.   `8.`888b ,8?   .8`8. `88888.       8 8888";         
	logo[20]<- "                                                                    8   `Y8o. `Y8888      .8? `8. `88888.   `8.`888b8?   .8? `8. `88888.      8 8888";
	logo[21]<- "                                                                    8      `Y8o. `Y8     .8?   `8. `88888.   `8.`888?   .8?   `8. `88888.     8 8888";
	logo[22]<- "                                                                    8         `Y8o.`    .888888888. `88888.   `8.`8?   .888888888. `88888.    8 8888";
	logo[23]<- "                                                                    8            `Yo   .8?       `8. `88888.   `8.`   .8?       `8. `88888.   8 888888888888";
	
	// Para hacer aparecer el logo gradualmente recorremos el arreglo 
	Para i <- 1 Hasta 23 Hacer
		Escribir "";
		Borrar Pantalla;
		para j <- 1 hasta i Hacer
			Si j <= Longitud(logo[j]) Entonces
				Escribir logo[j];
			FinSi
		FinPara
		Esperar 150 Milisegundos;
	FinPara
	
	
	
	// Para hacer desaparecer el logo gradualmente recorremos el arreglo de manera inversa
	Para i <- 23 Hasta 1 Con Paso -1 Hacer
		Borrar Pantalla;
		Escribir ""; 
		para j <- 1 hasta i Hacer
			Si j <= Longitud(logo[j]) Entonces
				Escribir logo[j];
			FinSi
		FinPara
		Esperar 200 Milisegundos;
	FinPara
	Para i <- 1 Hasta 23 Hacer
		Escribir logo[i];
	FinPara
	
	// escribimos un mensaje para mejorar la experiencia del jugador
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                                ***EL JUEGO COMIENZA***";
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                              Presione Enter para continuar...";
	Leer tecla;

	
FinSubProceso

// En este subproceso damos inicio a la portada del juego

SubProceso textoEstatico
	
    definir tecla Como Caracter;
	// Esta seria la pantalla inicial a modo de caratula 
	
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                            Universidad Tecnologica Nacional";
	Escribir "";
	Escribir "                                                                              Facultad Regional San Rafael";
	Escribir "";
	Escribir "";
	Escribir "                                                                                  Proyecto Integrador";
	Escribir "";
	Escribir "                                                                                  T.U.P COHORTE 2024"; 
	
	Escribir "";
	Escribir "";
	Escribir "";
	
	Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ... GOLDEN       ****  ****  ****    **    ****  *    *  *****      *     ... ";
    Escribir "                                                     ...      BYTES   *  *  *  *  *      *   *  *     * *  *    *       * *    ... ";
    Escribir "                                                     ...              ****  ****  ***      \    ***   *  * *    *      *   *   ... ";
    Escribir "                                                     ...              *     * *   *     *   *   *     *    *    *     *******  ... ";
    Escribir "                                                     ...              *     *  *  ****    **    ****  *    *    *    *       * ... ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
    Escribir "                                                     ............................................................................. ";
	Escribir "";
	Escribir "";
    Escribir "                                                                       Presione Enter para continuar...";
    Leer tecla;
	
	
FinSubProceso

// Aqui Damos un Mensaje de Bienvenida al Jugador 

SubProceso MensajeBienvenida (nombre_jugador Por Referencia)
	Definir confirmacion Como Caracter; //variable para Si o No
	Definir min_longitud como entero; //longitd minima del nombre
	min_longitud <- 3; //Longitud minima para el nombre
	Definir tecla Como Caracter;
	
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "                                                                              ? Bienvenido Soldado !!!";
	Escribir "";
	Escribir "                                                                   Estas Listo y preparado para esta Gran Aventura";
	Escribir "";
	Escribir "                                                                                 Presentate Soldado ";
	Escribir "";
	Repetir
		
	Escribir "                                                                       Escribe Tu Nombre (mínimo ", min_longitud, " caracteres):";
	leer nombre_jugador ;
	Si longitud(nombre_jugador) < min_longitud Entonces
		Escribir "El nombre debe tener al menos ", min_longitud, " caracteres. Inténtalo de nuevo.";
	Sino
		// Confirmar el nombre ingresado
		Escribir "¿Es correcto el nombre ", nombre_jugador, "? (S/N):";
		Leer confirmacion;	
		// Convertir la confirmación a mayúscula para simplificar la comparación
		confirmacion <- Mayusculas(confirmacion);
	FinSi
    Hasta Que longitud(nombre_jugador) >= min_longitud Y confirmacion = "S"
    Escribir "Nombre confirmado: ",nombre_jugador;
	Escribir "";
	Escribir "                                                             Perfecto soldado"," ", nombre_jugador, " ??? Que comience la Batalla !!!";
	
	Escribir "";
	Escribir "";
	
	Escribir "                                                                           Pesione Enter para continuar...";
	leer tecla;
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	
FinSubProceso

SubAlgoritmo mostrarTableroJugador(matrizJugador Por Referencia)
	Definir i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	columnaLetras <- " ABCDEFGHIJ";
	Dimension filaNumeros[10];
	Definir tecla Como Caracter;
	
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;

	FinPara 

	Escribir "Este es su tablero piense en donde ubicar sus barcos"; 
	// Lleno matriz del con 0
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir Sin Saltar "    "; //centrado de la matriz margen superior
			matrizJugador[i,j] <- 0;
		FinPara
		
	FinPara
	
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir ""; 
		mostrarValor(matrizJugador, columnaLetras, filaNumeros, i);	//llamo a la funcion para mostrar una matriz
		Escribir "";
	FinPara
	Escribir "";
	Escribir "                                                                           Presione Enter para continuar...";
	leer tecla;
FinSubAlgoritmo

SubAlgoritmo IngresarPosicionBarcoJugador(matrizJugador Por Referencia)
	Escribir "ingrese la posicion horizontal donde ubicar su barco";
	Definir posicion, columna, fila, i, j como Entero;
	Definir arregloLetras, dato, aux Como Caracter;
	Definir columnaLetras como cadena;
	Definir encontrado Como Logico; 
	Dimension arregloLetras(11);
	columnaLetras <- " ABCDEFGHIJ";
	
	
	Para i<-0 Hasta 10 Con Paso 1 Hacer
		arregloLetras[i] <- SubCadena(columnaLetras,i,i);
	FinPara
	
	//inicializar matriz para test nomas
//	Para i <- 1 Hasta 10 con paso 1 hacer //falta con paso 1
//		Para j <- 1 Hasta 10 con paso 1 hacer //falta con paso 1
//			matrizJugador[i,j]<-0;
//		FinPara
//	FinPara
	
	// Solicitar columna y fila al usuario
	Escribir "elija en que columna quiere colocar su barco (1-2-3-4-5-6-7-8-9-10) ";
	Leer columna;
	Escribir "elija en que fila quiere colocar su barco (A-B-C-D-E-F-G-H-I-J) ";
	Leer dato;
	dato <- Mayusculas(dato);
	encontrado <- falso;
	i<-0;
	// Busqueda secuencial
	mientras (i<11 y encontrado = Falso ) Hacer
		Si (arregloLetras[i] = dato) Entonces
			encontrado <- Verdadero;
			fila <- i;
		FinSi
		i <- i +1;
	FinMientras
	

    // Mostrar la matriz con los barcos colocados automáticamente
    Escribir "Los barcos han sido colocados correctamente:";
	Escribir "";
	
	
	// Colocamos el barco de 3
	si columna == 10 entonces 
		
		matrizJugador[fila, columna-2] <- 1;
		matrizJugador[fila, columna-1] <- 1;
		matrizJugador[fila, columna] <- 1;
	SiNo
		matrizJugador[fila, columna+2] <- 1;
		matrizJugador[fila, columna+1] <- 1;
		matrizJugador[fila, columna] <- 1;
		
	FinSi
	
FinSubAlgoritmo

SubAlgoritmo mostrarTableroJugadorEnemigo(matrizJugador Por Referencia, matrizEnemigo Por Referencia)
	Definir i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	columnaLetras <- " ABCDEFGHIJ";
	Dimension filaNumeros[10];
	Definir tecla Como Caracter;
	
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
		
	FinPara 
	
	Escribir "Este es su tablero                                                                        Este es el tablero del enemigo"; 
	// Lleno matriz enemigo con del con 0 REMOVER DESP
//	para i <- 0 Hasta 10 Con Paso 1 Hacer
//		para j <- 0 Hasta 10 Con Paso 1 Hacer
//			Escribir Sin Saltar "    "; //centrado de la matriz margen superior
//			matrizJugador[i,j] <- 0 ;
//			matrizEnemigo[i,j] <- 0 ; //REMOVER ESTO PARA  LOS OTROS SUBALGORITOMOS
//		FinPara
//		
//	FinPara
	
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir ""; 
		mostrarValor(matrizJugador, columnaLetras, filaNumeros, i);	//llamo a la funcion para mostrar una matriz
		mostrarValor(matrizEnemigo, columnaLetras, filaNumeros, i);	
		Escribir "";
	FinPara
	
	Escribir "";
	Escribir "                                                                           Presione Enter para continuar...";
	leer tecla;
FinSubAlgoritmo

SubAlgoritmo mostrarValor(matriz Por Referencia, columnaLetras Por Referencia, filaNumeros Por Referencia, i Por Valor)
	Definir j Como Entero;
	
	Escribir Sin Saltar "             "; // aqui centr? la matriz margen de izquierda a derecha
	Escribir Sin Saltar Subcadena(columnaLetras, i, i);
	Escribir Sin Saltar "     ";// separacion de la matris de las primera columna	
	
	para j<-0 Hasta 9 Con Paso 1 Hacer
		si i == 0 Entonces// si true muestro los numeros
			Escribir Sin Saltar filaNumeros[j];
			Escribir Sin Saltar "     "; // separacion entre los numeros
		sino 
			//Aqui imprimimos matriz 
			Escribir Sin Saltar matriz[i,j+1];
			Escribir Sin Saltar "     ";
//			si matriz[i,j+1] == -1 Entonces 
//				Escribir Sin Saltar "~"; // 
//				Escribir Sin Saltar "     ";
//			FinSi
//			si matriz[i,j+1] == 0 Entonces 
//				Escribir Sin Saltar "~"; // 
//				Escribir Sin Saltar "     "; // separacion del simbolo agua
//			FinSi
//			si matriz[i,j+1] == 1 Entonces 
//				
//				Escribir Sin Saltar "¶"; // 
//				Escribir Sin Saltar "     ";
//			FinSi
//			si matriz[i,j+1] == 2 Entonces 
//				Escribir Sin Saltar "*"; // 
//				Escribir Sin Saltar "     ";
//			FinSi
		FinSi
	FinPara
	


FinSubAlgoritmo	


SubAlgoritmo Coordenadas
	Definir matriz Como Entero;
	Definir letras Como Caracter;
	Definir i, j Como Entero;
	Definir fila, columna Como Entero;
	Definir coord_letra Como Caracter;
	Definir coord_num Como Entero;
	Dimension matriz[11,11];
	Dimension letras[11];
	
	// Inicializar letras
	letras[1] <- 'A';
	letras[2] <- 'B';
	letras[3] <- 'C';
	letras[4] <- 'D';
	letras[5] <- 'E';
	letras[6] <- 'F';
	letras[7] <- 'G';
	letras[8] <- 'H';
	letras[9] <- 'I';
	letras[10] <- 'J';
	
	// Inicializar matriz
	Para i <- 0 Hasta 10 Hacer
		Para j <- 0 Hasta 10 Hacer
			matriz[i, j] <- 0; // 0 representa agua
		FinPara
	FinPara
	// Colocar barcos aleatoriamente
	// Ejemplo: Colocar 5 barcos (1 en cada fila)
	Para i <- 1 Hasta 5 Hacer
		columna <- Aleatorio(1, 10);
		matriz[i, columna] <- 1; // 1 representa barco
	FinPara
	
	
	// Ingresar coordenadas y verificar
	Repetir
		// Solicitar coordenadas
		Escribir "Ingrese las coordenadas (ejemplo: A 5): ";
		Leer coord_letra, coord_num;
		
		coord_letra <- Mayusculas(coord_letra);
		
		// Convertir coordenadas
		columna <- coord_num;
		Para i <- 1 Hasta 10 Hacer
			Si letras[i] = coord_letra Entonces
				fila <- i;
			FinSi
		FinPara
		
		// Verificar coordenada
		Si matriz[fila, columna] = 0 Entonces
			Escribir "Agua";
			matriz[fila, columna] <- -1; // -1 representa agua
		SiNo
			Si matriz[fila, columna] = -1 Entonces
				Escribir "Ya has atacado aqui, es agua";
			FinSi
		FinSi
		Si matriz[fila, columna] = 1 Entonces
			Escribir "Genial soldado, le diste al Barco";
			matriz[fila, columna] <- 2; // 2 representa barco dañado
		SiNo
			Si matriz[fila, columna] = 2 Entonces
				Escribir "Ya has atacado aqui, el barco ya esta deñado";
			FinSi
		FinSi
		
		// Mostrar matriz (para pruebas)
		Para i <- 0 Hasta 10 Hacer
			Para j <- 0 Hasta 10 Hacer
				Escribir Sin Saltar matriz[i, j], " ";
			FinPara
			Escribir "";
		FinPara
		
		
	Hasta Que Falso // Bucle infinito, termina manualmente
FinSubAlgoritmo




// En este subproceso se ha creado una matriz que sera el tablero del enemigo

SubAlgoritmo mostrarMatrizEnemigo
	
	Definir matrizEnemigo, i,j, filaNumeros Como Entero;
	Definir columnaLetras Como cadena;
	Dimension matrizEnemigo[11,11], filaNumeros[10];
	columnaLetras <- " ABCDEFGHIJ";
	
	// Lleno fila 0 con numeros del 1 al 10
	para i <- 0 Hasta 9 Con Paso 1 Hacer
		filaNumeros[i] <- i + 1 ;
	FinPara
	
	
	
	// Lleno matriz del con 0
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		para j <- 0 Hasta 10 Con Paso 1 Hacer
			matrizEnemigo[i,j] <- 0;
		FinPara
		
	FinPara
	
	
	
	//Muestro matrizEnemigo 
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		Escribir "";
		Escribir Sin Saltar "   ";
		para j <- 0 Hasta 9 Con Paso 1 Hacer
			si j == 0 Entonces // si true se muestra las letras
				Escribir Sin Saltar Subcadena(columnaLetras, i, i);
				Escribir Sin Saltar "    ";
			FinSi
			si i == 0 Entonces// si true muestro los numeros
				Escribir Sin Saltar filaNumeros[j];
				Escribir Sin Saltar "      ";
			sino 
				Escribir Sin Saltar "[",matrizEnemigo[i,j] , "]"; // aca hago un mas 1 al j para salterme la columna 0
				Escribir Sin Saltar "    ";
			FinSi
			
		FinPara
		Escribir "";
		
	FinPara
	
	
	
	//esto de aca es un check necesitaba saber que quedo alineada
	//Leer fila ; // loop check que sea string
	
	//-----------------------------------------------------------------------------------------------------------------------------
	Definir cx,x1 Como Entero;
	Definir cy ,y1 Como Entero;
	Definir destruir Como Entero;
	Definir balas Como Entero;
	Definir M,M2 Como Entero ;
	
	
	Dimension M2[11,11];
	
	balas <- 0;
	destruir <- 0 ;
	
	Para i<- 0 hasta 10 Hacer
		para j<-0 hasta 10 Hacer
			M2[i,j] <- 0;
		FinPara
	FinPara
	
	
	// Alijo al azar
	
	Para i<-1 Hasta 10 Hacer
		x1 <-Aleatorio(1,9);
		y1<- Aleatorio(1,9);
		si M2[x1,y1] = 0 Entonces
			M2[x1,y1] <- 1;
		FinSi
	FinPara
	
	
	Escribir "Ingrese numeros de disparo";
	Leer balas;
	
	Repetir
		Escribir "Ingrese coordenada x del disparo(entre 0 al 9)";
		Leer cx;
		Escribir "Ingrese coordenada y del disparo(entre 0 al 9)";
		Leer cy;
		
		balas<- balas-1;
		// Cuando da a u nbarco marca 1 y cuando cae al agua marca 2 
		Si M2[cx,cy]=2 Entonces
			Escribir "HA DADO EN EL BARCO";
			matrizEnemigo[cx,cy] <- 1;
			destruir<- destruir + 1;
		SiNo
			Escribir "                              --Disparo Al Mar--";
			matrizEnemigo[cx,cy] <- 2;
		FinSi
		Escribir "";
		para i <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir "";
			Escribir Sin Saltar "   ";
			para j <- 0 Hasta 9 Con Paso 1 Hacer
				si j == 0 Entonces // si true se muestra las letras
					Escribir Sin Saltar Subcadena(columnaLetras, i, i);
					Escribir Sin Saltar "    ";
				FinSi
				si i == 0 Entonces// si true muestro los numeros
					Escribir Sin Saltar filaNumeros[j];
					Escribir Sin Saltar "      ";
				sino 
					Escribir Sin Saltar "[",M2[i,j+1] , "]"; // aca hago un mas 1 al j para salterme la columna 0
					Escribir Sin Saltar "    ";
				FinSi
				
			FinPara
			Escribir "";
			
		FinPara
		Escribir "";
		Escribir "------------------------------------------------------------------------------------------------------------------";
		Escribir "Le quedan ",balas," disparos";
		Escribir "Barcos destruidos :", destruir;
	Hasta Que destruir = 3 o balas = 0
	
	Si destruir < 3 y balas =0 Entonces
		Escribir "PERDIO";
	SiNo
		Escribir "***FELICITACIONES DESTROZO TODOS LOS BARCOS***";
	FinSi
FinSubAlgoritmo

SubAlgoritmo finDelJuego(nombre_jugador por referencia)
    // Mostrar mensaje de agradecimiento al usuario
    Escribir "¡Gracias por jugar, ", nombre_jugador, " !Esperamos que hayas disfrutado del juego.";
    Escribir "Recuerda: Si lo puedes imaginar, lo puedes programar.";
	Escribir "Ariel Bentancud";
FinSubAlgoritmo

SubProceso  colocar_barcos_enemigo(matrizEnemigo Por Referencia)
    definir columna,fila, i, j,tipo,h Como Entero;
    
	// Inicializar la matriz con agua (0 representa agua)
    Para i <- 1 Hasta 10 Hacer
        Para j <- 1 Hasta 10 Hacer
            matrizEnemigo[i, j] <- 0;
        FinPara
    FinPara
	
    // Arreglo para almacenar los tamaños y formatos de los barcos enemigos
    definir barco Como Entero;
    definir formatos Como Entero;
	Dimension barco[5];
	dimension formatos[5];
	definir tecla Como Caracter;
    
    // Definir tamaños y formatos para cada tipo de barco
    barco[1] <- 5; // tamaño del portaviones
    barco[2] <- 4; // tamaño del crucero
    barco[3] <- 3; // tamaño del submarino
    barco[4] <- 2; // tamaño de la lancha
    
    formatos[1] <- 9; // formato del portaviones
    formatos[2] <- 8; // formato del crucero
    formatos[3] <- 7; // formato del submarino
    formatos[4] <- 6; // formato de la lancha
    
    // Colocar cada barco automáticamente
    Para tipo <- 1 Hasta 4 Hacer
        // Establece ubicación aleatoria dentro de los límites del tablero
		// SERIA UN CHECK DE LA VARIABLE COLUMNA DE ARRIBA MAS LAS QUE TIENE QUE SER COLOCADAS
		//si el lugar es en columna i y lugar en columna i +1 +2+ +4 0 hago algo 
        columna <- Aleatorio(1, 10 - barco[tipo] + 1);
        fila <- Aleatorio(1, 10);
        
        // Colocar el barco en la matriz
        h <- 0;
		
        Para i <- 0 Hasta barco[tipo]-1 Hacer
            matrizEnemigo[fila, columna+h] <- formatos[tipo];
            h <- h + 1;
        FinPara
    FinPara
	
	// Se le indica al jugador que presinando enter se colocaran 
	//los barcos del enemigo en el tablero
	
	Escribir " El enemigo colocara sus barcos en el tablero";
	escribir " Presione ENTER para continuar";
	leer tecla;
    
    // Mostrar la matriz con los barcos colocados automáticamente
    Escribir "Los barcos han sido colocados correctamente:";
	Escribir "";
	

	Escribir "";
	Escribir " Presione ENTER para continuar";
	leer tecla;
	Escribir "";
    
FinSubProceso

// menu-varias opciones-opcion "tener las rglas del juego o como jugar"
// 1.	jugar 
// 2.	reglas del juego o como jugar
// 3.	creditos
// 4.	Salir 
Proceso ReglasDelJuego
	definir opcion como entero;
	
	
	//Repetir
	Escribir "MENU";
	Escribir "1- Jugar"; // aqui se redirige al subalgoritmo "mostrarTableroJugador(matrizJugador Por Referencia)"
	Escribir "2- Reglas del juego";
	Escribir "3- Creditos";// aqui se redirige al subalgoritmo "creditos ?"
	Escribir "4- salir";
	Escribir sin saltar "digite la opcion de menu:";
	Leer opcion;
	escribir "";
	Segun opcion Hacer
		1:
			Escribir "inicio de juego"; //;
		2:
			Escribir "                                                                                    Reglas del juego"; 
			Escribir "*************************************************************************************************************************++++**************************************************";
			Escribir "";
			Escribir " Las reglas de la batalla naval son";
			Escribir "";
			Escribir " CONDICIONES INICIALES:";
			Escribir " Cantidad de jugadores: 2 jugadores";
			Escribir " Para iniciar el juego cada jugador debe tener: ";
			Escribir " 1 Portaaviones , 1 crucero , 1 submarino";
			
			Escribir "";
			Escribir " COMIENZO DEL JUEGO";
			Escribir " 1 - Los jugadores eligen quien inicia el ataque";
			Escribir " 2 - Cada jugador coloca sus barcos horizontal o verticalmente (no en diagonal) ";
			Escribir " 3 - Cuando hayan sido colocados todos los barcos anuncian LISTO, a partir de ese momento no se pueden cambiar los barcos de posición.";
			Escribir "";
			Escribir " COMIENZA EL COMBATE";
			Escribir " 1 - El jugador que primero dijo LISTO, abre el fuego ingresando las coordenadas (compuesta por una letra y un numero) tratando de alcanzar un barco enemigo, luego lo hará su ";
			Escribir"      contrincante y así sucesivamente.";
			Escribir " 2 - El disparo es anunciado con una Letra y un Número que corresponden a una coordenada del tablero enemigo localizado por la convergencia entre la Letra y el Número de su base.";
			Escribir " 3 - El atacado deberá informar su situación: TOCADO, si el disparo fue certero ó AGUA, si el disparo fue errado y el tipo de barco alcanzado (Portaaviones, Submarinos, etc).";
			Escribir "";
			Escribir " MARCACIÓN";
			Escribir " 1 - Después que el jugador haya efectuado el disparo y sepa si ha acertado o no, podrá ir visualizando los aciertos, ésto le servirá de referencia y evitará repetir los disparos";
			Escribir "     a los mismos puntos.";
			Escribir " 2 - No se marcan los tiros fallidos del adversario pero sí los impactos.";
			Escribir "";				
			Escribir " HUNDIR LOS BARCOS";
			Escribir " 1 - Cuando un barco haya recibido tantos impactos como agujeros tiene, se considera HUNDIDO y deberá ser retirado de la base debiendo ser anunciado al oponente.";
			Escribir " 2 - Los jugadores deben ser honestos anunciando los impactos recibidos, en caso de duda o posible equivocación se solicita tregua y se revisan los disparos realizados hasta el momento.";
			
			Escribir "     Será ganador el primer jugador que hunda los cuatro barcos de su oponente.";
			Escribir "";
			Escribir "                                                                                       ¡A JUGAR!";
		3:
			Escribir "Creditos";
		4:
			Escribir "Salir del menu";
		De Otro Modo:
			Escribir "se equivocó de opcion de menu.";
	FinSegun
	Escribir "";
FinProceso


