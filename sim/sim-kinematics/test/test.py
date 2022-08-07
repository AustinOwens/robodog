#***********************************************
#
#      Filename: test.py
#
#        Author: CGOULD - christian.d.gould@gmail.com
#   Description: ---
#        Create: 2022-06-24 19:46:09
# Last Modified: 2022-06-24 19:46:09
#***********************************************
import numpy as np
import example

A = np.array([[1,2,1],
              [2,1,0],
              [-1,1,2]])

print('A = \n'                   , A)
print('example.det(A) = \n'      , example  .det(A))
print('numpy.linalg.det(A) = \n' , np.linalg.det(A))
print('example.inv(A) = \n'      , example  .inv(A))
print('numpy.linalg.inv(A) = \n' , np.linalg.inv(A))

