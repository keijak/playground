# Notes: Learning Python for Data Analysis and Visualization

## Japanese version
https://www.udemy.com/python-jp/learn/v4/overview

## Jupyter
- `%` : magic
- `!` : shell command

### Keyboard shortcut
- In command mode
  - Enter: => edit mode
  - m: => markdown cell
  - y: => code cell
  - k,j: up/down
- In edit mode
  - Esc: => command mode
  - Shift+Enter => Run code and go to next cell
  - Control+Enter => Run code only

## Numpy
### N-dimensional Array (numpy.ndarray)
http://docs.scipy.org/doc/numpy/reference/arrays.html

### Universal Function (numpy.ufunc)
A universal function is a function that operates on ndarrays in an element-by-element fashion.
http://docs.scipy.org/doc/numpy/reference/ufuncs.html

- numpy.transpose() is the more flexible version of T.
- numpy.sum() can take an axis as a parameter.
  - sum(axis=0) returns sums of each row.
  - sum(axis=1) returns sums of each column.


## I/O
- numpy.save(filename, arr)
- numpy.savez(filename, k=v...)
- numpy.savetxt(filename, )

## Matplotlib.pyplot

```
import matplotlib.pyplot as plt
%matplotlib inline
```

### imshow(a)
You can simply pass an 2d-array to plt.imshow().
It maps each value to a colored dot.

### Color bar (which color means what) and title of the chart.
Call the functions _after_ plt.imshow()
```
plt.imshow(z)
plt.colorbar()
plt.title('hoge')
```
