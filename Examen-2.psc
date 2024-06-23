Funcion op <- menu 
	Limpiar Pantalla 
	escribir "****************************"
	escribir "* 1. formula cuadratica    *" 
	escribir "* 2. Tablas de multiplicar *"
	escribir "* 3.        Salir          *"
	escribir "****************************"
	escribir "Seleccione cualquier opcion"
	leer op 
Fin Funcion

Algoritmo Examen2 
	
	Repetir
		op <- menu()
		segun op Hacer
			1: definir a,b,c, discriminante, x1, x2 como real
				escribir "Ingrese el valor de a" 
				leer a 
				si a <> 0 Entonces
					escribir "Ingrese el valor de b"
					leer b 
					escribir "ingrese el valor de c"
					leer c
					discriminante = b*2 - 4*a*c
					si discriminante >= 0 Entonces
						x1 = (-b + raiz (discriminante)) / (2*a)
						x2 = (-b - raiz (discriminante)) / (2*a)
						escribir "las soluciones son:"
						escribir "x1 = ", x1
						escribir "x2 = ", x2 
					sino 
						escribir "el discriminante es negativo, no existen soluciones reales"
						
						FinSi
					SiNo
						escribir "El valor de a no puede ser igual a 0. Intentelo de nuevo"
					FinSi
				
				
				
				
					
				2: escribir "que numero de tabla desea vizualizar?"
					leer num
					para z <- 1 hasta 10 Hacer 
						escribir num, " x ",z, " = ", (num*z)
						si z mod 5 = 0 Entonces
							escribir z
						SiNo
							si z mod 3 = 0 Entonces
								escribir z 
								si z mod 6 = 0 Entonces
									escribir z
								FinSi
							FinSi
						FinSi
						
					FinPara
		FinSegun
		
	Hasta Que num >= 1
	
FinAlgoritmo
