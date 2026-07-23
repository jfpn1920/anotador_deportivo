Algoritmo anotador_deportivo
	Definir opcion, totalPartidos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir equipoLocal Como Caracter
	Definir equipoVisitante Como Caracter
	Definir golesLocal Como Entero
	Definir golesVisitante Como Entero
	Definir deporte Como Caracter
	Definir ganador Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension equipoLocal[100]
	Dimension equipoVisitante[100]
	Dimension golesLocal[100]
	Dimension golesVisitante[100]
	Dimension deporte[100]
	Dimension ganador[100]
	Dimension estado[100]
	totalPartidos <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_anotador_deportivo|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal anotador deportivo"
		Escribir "1) registrar partido"
		Escribir "2) editar partido"
		Escribir "3) eliminar partido"
		Escribir "4) buscar partido"
		Escribir "5) listar partidos"
		Escribir "6) ver detalles del partido"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_partido|--//
			//-----------------------//
			1:
				Escribir "registrar partido"
				id[totalPartidos+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalPartidos+1]
				Escribir "ingrese el equipo local:"
				Leer equipoLocal[totalPartidos+1]
				Escribir "ingrese el equipo visitante:"
				Leer equipoVisitante[totalPartidos+1]
				Escribir "ingrese los goles del equipo local:"
				Leer golesLocal[totalPartidos+1]
				Escribir "ingrese los goles del equipo visitante:"
				Leer golesVisitante[totalPartidos+1]
				Escribir "ingrese el deporte:"
				Leer deporte[totalPartidos+1]
				Si golesLocal[totalPartidos+1] > golesVisitante[totalPartidos+1] Entonces
					ganador[totalPartidos+1] <- equipoLocal[totalPartidos+1]
				SiNo
					Si golesVisitante[totalPartidos+1] > golesLocal[totalPartidos+1] Entonces
						ganador[totalPartidos+1] <- equipoVisitante[totalPartidos+1]
					SiNo
						ganador[totalPartidos+1] <- "empate"
					FinSi
				FinSi
				Escribir "ingrese el estado del partido:"
				Leer estado[totalPartidos+1]
				totalPartidos <- totalPartidos + 1
				Escribir "partido registrado correctamente."
			//--------------------//
			//--|editar_partido|--//
			//--------------------//
			2:
				Escribir "editar partido"
				Si totalPartidos = 0 Entonces
					Escribir "no hay partidos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalPartidos Hacer
						Escribir id[i], " | ", equipoLocal[i], " | ", equipoVisitante[i], " | ", golesLocal[i], " | ", golesVisitante[i], " | ", deporte[i], " | ", ganador[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del partido:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPartidos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo equipo local:"
							Leer equipoLocal[i]
							Escribir "ingrese el nuevo equipo visitante:"
							Leer equipoVisitante[i]
							Escribir "ingrese los nuevos goles del equipo local:"
							Leer golesLocal[i]
							Escribir "ingrese los nuevos goles del equipo visitante:"
							Leer golesVisitante[i]
							Escribir "ingrese el nuevo deporte:"
							Leer deporte[i]
							Si golesLocal[i] > golesVisitante[i] Entonces
								ganador[i] <- equipoLocal[i]
							SiNo
								Si golesVisitante[i] > golesLocal[i] Entonces
									ganador[i] <- equipoVisitante[i]
								SiNo
									ganador[i] <- "empate"
								FinSi
							FinSi
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "partido editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un partido con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_partido|--//
			//----------------------//
			3:
				Escribir "eliminar partido"
				Si totalPartidos = 0 Entonces
					Escribir "no hay partidos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalPartidos Hacer
						Escribir id[i], " | ", equipoLocal[i], " | ", equipoVisitante[i], " | ", golesLocal[i], " | ", golesVisitante[i], " | ", deporte[i], " | ", ganador[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del partido:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPartidos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalPartidos Entonces
								Para j <- i Hasta totalPartidos - 1 Hacer
									id[j] <- id[j+1]
									equipoLocal[j] <- equipoLocal[j+1]
									equipoVisitante[j] <- equipoVisitante[j+1]
									golesLocal[j] <- golesLocal[j+1]
									golesVisitante[j] <- golesVisitante[j+1]
									deporte[j] <- deporte[j+1]
									ganador[j] <- ganador[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalPartidos <- totalPartidos - 1
							Escribir "partido eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un partido con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_partido|--//
			//--------------------//
			4:
				Escribir "buscar partido"
				Si totalPartidos = 0 Entonces
					Escribir "no hay partidos registrados."
				SiNo
					Escribir "ingrese el id del partido:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPartidos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", equipoLocal[i], " | ", equipoVisitante[i], " | ", golesLocal[i], " | ", golesVisitante[i], " | ", deporte[i], " | ", ganador[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un partido con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_partidos|--//
			//---------------------//
			5:
				Escribir "listar partidos"
				Si totalPartidos = 0 Entonces
					Escribir "no hay partidos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalPartidos Hacer
						Escribir id[i], " | ", equipoLocal[i], " | ", equipoVisitante[i], " | ", golesLocal[i], " | ", golesVisitante[i], " | ", deporte[i], " | ", ganador[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_partido|--//
			//--------------------------//
			6:
				Escribir "ver detalles del partido"
				Si totalPartidos = 0 Entonces
					Escribir "no hay partidos registrados."
				SiNo
					Escribir "ingrese el id del partido:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPartidos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del partido"
							Escribir "id: ", id[i]
							Escribir "equipo local: ", equipoLocal[i]
							Escribir "equipo visitante: ", equipoVisitante[i]
							Escribir "goles local: ", golesLocal[i]
							Escribir "goles visitante: ", golesVisitante[i]
							Escribir "deporte: ", deporte[i]
							Escribir "ganador: ", ganador[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un partido con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalPartidos = 0 Entonces
					Escribir "no hay partidos registrados."
				SiNo
					totalGolesLocal <- 0
					totalGolesVisitante <- 0
					mayorGoles <- golesLocal[1] + golesVisitante[1]
					menorGoles <- golesLocal[1] + golesVisitante[1]
					Para i <- 1 Hasta totalPartidos Hacer
						totalGolesLocal <- totalGolesLocal + golesLocal[i]
						totalGolesVisitante <- totalGolesVisitante + golesVisitante[i]
						totalGoles <- golesLocal[i] + golesVisitante[i]
						Si totalGoles > mayorGoles Entonces
							mayorGoles <- totalGoles
						FinSi
						Si totalGoles < menorGoles Entonces
							menorGoles <- totalGoles
						FinSi
					FinPara
					promedioGoles <- (totalGolesLocal + totalGolesVisitante) / totalPartidos
					Escribir "estadistica general"
					Escribir "total de partidos: ", totalPartidos
					Escribir "total goles equipo local: ", totalGolesLocal
					Escribir "total goles equipo visitante: ", totalGolesVisitante
					Escribir "promedio de goles por partido: ", promedioGoles
					Escribir "mayor cantidad de goles en un partido: ", mayorGoles
					Escribir "menor cantidad de goles en un partido: ", menorGoles
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar el anotador deportivo."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo