import numpy as np
from numpy import random
verylow = np.random.randint(1, 25, size=25)
low = np.random.randint(26, 50, size=45)
medium = np.random.randint(51, 350, size=20)
high = np.random.randint(351, 650, size=6)
veryhigh = np.random.randint(651, 2000, size=4)
transactions = np.concatenate((verylow,low,medium,high,veryhigh))
np.random.shuffle(transactions)
print(transactions)

import numpy as np
from numpy import random
verylow = np.random.randint(1, 25, size=125)
low = np.random.randint(26, 50, size=225)
medium = np.random.randint(51, 350, size=100)
high = np.random.randint(351, 650, size=30)
veryhigh = np.random.randint(651, 2000, size=20)
transactions = np.concatenate((verylow,low,medium,high,veryhigh))
np.random.shuffle(transactions)
print(transactions)