# Notes: Learning Python for Data Analysis and Visualization

- Japanese version
  - https://www.udemy.com/python-jp/learn/v4/overview

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
  - Tab: Completion
  - Shift+Enter => Run code and go to next cell
  - Control+Enter => Run code only

## Numpy
### N-dimensional Array (numpy.ndarray)
http://docs.scipy.org/doc/numpy/reference/arrays.html

- To serialize an array:
  - numpy.save(filename, arr)
  - numpy.savez(filename, k=v...)
  - numpy.savetxt(filename, arr, delimiter=',')

### Universal Function (numpy.ufunc)
A universal function is a function that operates on ndarrays in an element-by-element fashion.
http://docs.scipy.org/doc/numpy/reference/ufuncs.html

- numpy.transpose() is the more flexible version of T.
- numpy.sum() can take an axis as a parameter.
  - sum(axis=0) returns sums of each row.
  - sum(axis=1) returns sums of each column.


## Pandas
### Series
- Labeled 1-dimensional array
  - Something like a table with two columns (key & value).
  - s.index returns the label information of the series.
  - s.values returns numpy.ndarray (dropping label information)
  - An index can have a name (= "key column name")
  - A series itself can have a name (= "value column name").
- you can use it like dict.
  - `s[index]` : simple lookup
  - `s[s > value_threshold]` : filter by bool-value dict.
- Operations work per label.
  - `s1 + s2` pairs values with the same index and adds them.
- Access item
  - `s[label]` : label is the index.
  - `s[i]` : no matter what the index is, you can access an item like an array.
  - `s[i:j]` : slice also works
### DataFrame
- `pd.read_clipboard()` is useful.
- Access a column by `df['hoge']` or `df.hoge`. A Series is returned.
- Access a subset of columns of a dataframe: `df[['hoge', 'piyo']]`
- Series != signle-column DataFrame
  - `df['hoge']` vs `df[['hoge']]`. They are different things.
- Copy a data frame.
  - `pd.DataFrame(df, columns=['hoge', 'piyo'])`
- `df.head()` and `df.tail()`
- `df.ix` is a special column (index; primary key)
  - `df.ix[hoge]` works like `series[hoge]`.
  - returns a Series whose index is the DataFrame's columns.
  - index is immutable.
- missing cell becomes `NaN`.
- `df + s` : regards `s` as a DataFrame of the same shape as `df` where each row is the series.
  - Series' index becomes the DataFrame's columns.

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
