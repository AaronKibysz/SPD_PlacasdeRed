print('TABLA DE POSICIONES FASE DE GRUPOS')

list_teams = []

for i in range(1, 5):
    team = input(f'Ingese el equipo {i}: ')
    list_teams.append(team)

print('Los equipos que integran el grupo son:')
for i in range(4):
    print(f'{i + 1}- {list_teams[i]}')

