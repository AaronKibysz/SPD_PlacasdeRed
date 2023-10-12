print('TABLA DE POSICIONES FASE DE GRUPOS')

list_teams = [] # Lista para guardar los equipos

for i in range(1, 5): # En este bucle for se ingresaran los nombres de los equipos que integran el grupo
    team = input(f'Ingese el equipo {i}: ')
    list_teams.append(team)

print('\nLos equipos que integran el grupo son:') # Se muestra en pantalla los equipos ingresados anteriormente
for i in range(4):
    print(f'{i + 1}- {list_teams[i]}')

