print('---------TABLA DE POSICIONES FASE DE GRUPOS---------\n')

amount_qualy = int(input('¿Cuantos equipos clasifican a la siguiente fase?: '))
dict_teams = {}  # Lista para guardar los equipos
counter = 1
while True:
    team = input(f'Ingrese el equipo {counter} (deje en blanco para finalizar la carga): ')
    if not team:
        break
    dict_teams[team] = [0, 0]
    counter += 1


print('\nLos equipos que integran el grupo son:')  # Se muestra en pantalla los equipos ingresados anteriormente
position = 1
for i in dict_teams:
    print(f'{position}- {i}')
    position += 1


list_teams = list(dict_teams.keys())
print('\nIngrese los resultados de los partidos con el siguiente formato:\n            golesEquipo1:golesEquipo2\n')
for i in range(len(dict_teams)):
    for j in range(i+1, len(dict_teams)):
        while True:
            result = input(f'Resultado de {list_teams[i]}:{list_teams[j]} ---> ')

            if int(result[0:result.find(':')]) < 0 or int(result[result.find(':')+1:]) < 0:
                print('ERROR. No se puede ingresar una cantidad de goles negativa. Reintente\n')
                continue

            if int(result[0:result.find(':')]) > int(result[result.find(':')+1:]):
                dict_teams[list_teams[i]][0] += 3
                dict_teams[list_teams[i]][1] += int(result[0:result.find(':')])
                dict_teams[list_teams[j]][1] += int(result[result.find(':')+1:])
                break
            elif int(result[0:result.find(':')]) < int(result[result.find(':')+1:]):
                dict_teams[list_teams[j]][0] += 3
                dict_teams[list_teams[i]][1] += int(result[0:result.find(':')])
                dict_teams[list_teams[j]][1] += int(result[result.find(':')+1:])
                break
            else:
                dict_teams[list_teams[i]][0] += 1
                dict_teams[list_teams[j]][0] += 1
                dict_teams[list_teams[i]][1] += int(result[0:result.find(':')])
                dict_teams[list_teams[j]][1] += int(result[result.find(':')+1:])
                break
dict_teams_sorted = dict(sorted(dict_teams.items(), key=lambda item: (item[1][1]), reverse=True))
dict_teams_sorted2 = dict(sorted(dict_teams_sorted.items(), key=lambda item: (item[1][0]), reverse=True))


print('\n---------TABLA DE POSICIONES FINAL---------\n')

print('Equipo           Puntos          Goles')
for teams, teams_points_goals in dict_teams_sorted2.items():
    needed_spaces = 19 - len(teams)
    for i in range(needed_spaces):
        teams += ' '
    print(teams, end='')
    print(teams_points_goals[0], '             ', teams_points_goals[1])

list_teams = list(dict_teams_sorted2.keys())
for i in range(amount_qualy):
    print(f'Equipo clasificado {i+1}: {list_teams[i]}')







