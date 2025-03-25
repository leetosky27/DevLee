# solicitud de datos al usuario 
nombre = input ("Ingresa tu nombre: ")

dia_nac = int(input("Día de nacimiento: "))
while dia_nac < 1 or dia_nac > 31:
    print("Error: El día debe estar entre 1 y 31.")
    dia_nac = int(input("Día de nacimiento: "))
    
mes_nac = int(input("Mes de nacimiento: "))
while mes_nac < 1 or mes_nac > 12:
    print("Error: El mes debe estar entre 1 y 12.")
    mes_nac = int(input("Mes de nacimiento: "))
    
ano_nac = int(input("Año de nacimiento: "))


# ahora ingresar los datos de la fecha actual
dia_act = int(input("Dia actual: "))
while dia_act < 1 or dia_act > 31:
    print("Error: El día debe estar entre 1 y 31.")
    dia_act = int(input("Día actual: "))
    
mes_act = int(input("Mes actual: "))
while mes_act < 1 or mes_act > 12:
    print("Error: El mes debe estar entre 1 y 12.")
    mes_act = int(input("Mes actual: "))
    
ano_act = int(input("año actual: "))
while ano_act >= 2026:
    print("Error: El año debe ser menor a la fecha")
    ano_act = int(input("Año actual: "))



# calcular la edad

años  = ano_act - ano_nac
meses = mes_act - mes_nac
dias = dia_act - dia_nac

# Ajustar si el mes actual es menor al mes de nacimiento 
#Restamos 1 año porque todavía no ha llegado el cumpleaños en el año actual.
#Sumamos 12 meses para corregir el valor negativo.Si naciste en julio (7) y estamos en marzo (3), la diferencia sería 3 - 7 = -4.
#Entonces ajustamos a 8 meses y restamos un año. 

if meses < 0:
    años -= 1
    meses += 12
    
# Ajustar si el dia actual es menor al dia de nacimiento
# para evitar dias negativos 
#Restamos 1 mes porque todavía no ha pasado el día de cumpleaños este mes.
#Si al restar el mes obtenemos un valor negativo, ajustamos los meses y restamos un año.
#Luego sumamos los días del mes anterior para compensar la diferencia.

if dias < 0:
    meses -= 1
    mes_anterior = mes_act - 1 if mes_act > 1 else 12
    dias += 30
    
# mostrar resultado

print (f"{nombre}, tu edad es {años} años, {meses} meses y {dias} días.")
