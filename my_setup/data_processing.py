# faire un programme qui prend une liste de données financières, et la traite de la façon suivante:
# 1 - obtenir les rendements (différence en pourcentages entre deux résultats quotidiens)
# 2 - assigner une note à chaque rendement
# 3 - pour chaque note assignée, composer la str qui sera shippée à csound

import pandas

# read_csv
data = pandas.read_csv('data_from_vix_jan05_jan10.txt')
print(data.head())

# obtenir les rendements en pourcentage
data_pct = data.pct_change()
print(data_pct.head())

# assigner une note


# pour chaque note assignée, composer la str qui sera shippée à csound
start_time = 0.0
duration = 0.50
for row in data_pct['13.98'] :
    pp = 'i1  ' + str(start_time) +'   '+ str(duration)+ '  3000   '+str(100.00*abs(row))
    print(pp)
    start_time = start_time + duration