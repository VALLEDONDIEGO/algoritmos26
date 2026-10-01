Algoritmo SISTEMA_DE_NOTAS
	
	Definir a, b, c, d, e Como Real
	Definir puntos, promedio, nota_maxima Como Real
	Definir aprobados, op Como Entero
	Definir notas_ingresadas Como Logico
	//variable notas como falso 
	notas_ingresadas <- Falso
	
	Repetir
		
		Escribir "=============================="
		Escribir "     SISTEMA DE NOTAS FE729"
		Escribir "=============================="
		Escribir "1. Ingresar Notas"
		Escribir "2. Mostrar Notas y Categorias"
		Escribir "3. Estadisticas"
		Escribir "4. Sumar Puntos Extra"
		Escribir "5. Salir"
		Escribir "=============================="
		Escribir "Seleccione una opcion:"
		Leer op
		
		Segun op Hacer
			
			1:
				Escribir "------------------------------"
				Escribir "      INGRESAR NOTAS"
				Escribir "------------------------------"
				// ingresar nota si la nota es menor a 0 y mayor a 100 volver a solicitar el dato hasta que se cumpla la condicion
				Repetir
					Escribir "Ingrese nota 1 (0-100):"
					Leer a
				Hasta Que a >= 0 Y a <= 100
				
				Repetir
					Escribir "Ingrese nota 2 (0-100):"
					Leer b
				Hasta Que b >= 0 Y b <= 100
				
				Repetir
					Escribir "Ingrese nota 3 (0-100):"
					Leer c
				Hasta Que c >= 0 Y c <= 100
				
				Repetir
					Escribir "Ingrese nota 4 (0-100):"
					Leer d
				Hasta Que d >= 0 Y d <= 100
				
				Repetir
					Escribir "Ingrese nota 5 (0-100):"
					Leer e
				Hasta Que e >= 0 Y e <= 100
				// notas ingresadas como verdadero para validar si las  cantidades se guardaron
				notas_ingresadas <- Verdadero
				Escribir "Notas guardadas correctamente."
				
				
			2:
				Si notas_ingresadas = Falso Entonces
					
					Escribir "Primero debe ingresar las notas."
				Sino
					//si la variable es mayor o igual a 61 escribir la nota y estado
					Escribir "     NOTAS Y CATEGORIAS"
					Si a >= 61 Entonces
						Escribir "Nota 1: ", a, " - APROBADO"
					Sino
						Escribir "Nota 1: ", a, " - REPROBADO"
					FinSi
					
					Si b >= 61 Entonces
						Escribir "Nota 2: ", b, " - APROBADO"
					Sino
						Escribir "Nota 2: ", b, " - REPROBADO"
					FinSi
					
					Si c >= 61 Entonces
						Escribir "Nota 3: ", c, " - APROBADO"
					Sino
						Escribir "Nota 3: ", c, " - REPROBADO"
					FinSi
					
					Si d >= 61 Entonces
						Escribir "Nota 4: ", d, " - APROBADO"
					Sino
						Escribir "Nota 4: ", d, " - REPROBADO"
					FinSi
					
					Si e >= 61 Entonces
						Escribir "Nota 5: ", e, " - APROBADO"
					Sino
						Escribir "Nota 5: ", e, " - REPROBADO"
					FinSi
					
					Escribir "------------------------------"
					
				FinSi
			3:
				Si notas_ingresadas = Falso Entonces
					
					Escribir "Primero debe ingresar las notas."
					
				Sino
					// formula de promedio 
					promedio <- (a + b + c + d + e) / 5
					
					nota_maxima <- a
					
					Si b > nota_maxima Entonces
						nota_maxima <- b
					FinSi
					
					Si c > nota_maxima Entonces
						nota_maxima <- c
					FinSi
					
					Si d > nota_maxima Entonces
						nota_maxima <- d
					FinSi
					
					Si e > nota_maxima Entonces
						nota_maxima <- e
					FinSi
					// contador para mostrar los cursos totales aporbados
					aprobados <- 0
					
					Si a >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si b >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si c >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si d >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Si e >= 61 Entonces
						aprobados <- aprobados + 1
					FinSi
					
					Escribir "------------------------------"
					Escribir "        ESTADISTICAS"
					Escribir "------------------------------"
					Escribir "Promedio: ", promedio
					Escribir "Nota mas alta: ", nota_maxima
					Escribir "Cantidad de aprobados: ", aprobados
					Escribir "------------------------------"
					
				FinSi
			4:
				Si notas_ingresadas = Falso Entonces
					
					Escribir "Primero debe ingresar las notas."
					
				Sino
					
					Escribir "Ingrese los puntos extra:"
					Leer puntos
					//variable será igual al valor dado + los puntos que se le sumen 
					a <- a + puntos
					b <- b + puntos
					c <- c + puntos
					d <- d + puntos
					e <- e + puntos
					// si variable es mayor a 100 que tome valor de 100 unicamente 
					Si a > 100 Entonces
						a <- 100
					FinSi
					Si b > 100 Entonces
						b <- 100
					FinSi
					Si c > 100 Entonces
						c <- 100
					FinSi
					Si d > 100 Entonces
						d <- 100
					FinSi
					Si e > 100 Entonces
						e <- 100
					FinSi
					Escribir "Puntos extra agregados"
					FinSi
				5:
					Escribir "------------------------------"
					Escribir "     FIN DEL PROGRAMA"
					Escribir "------------------------------"
					
				De Otro Modo:
					Escribir "Opcion incorrecta."
				
		FinSegun
		
	Hasta Que op = 5
	
FinAlgoritmo