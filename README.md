# AlgoritmaAcademy
Algoritma Academy Internal Package



## Installation

To install the package use the following command:

```
devtools::install_github("Davidlimbong/AlgoritmaAcademy")
```


## How to use `corgi_score()`
The function received some parameter.
- `github` : Link to the course on corgi.re
- `sheet_url` : Google spreadsheet link
- `sheet_name` : Name of sheet
- `column_name` : The column that you want to update
- `max_score` Maximum score
- `email` : Your Algoritma email
```
library(AlgoritmaAcademy)

corgi_score(
  github = "https://corgi.re/courses/Davidlimbong/P4DS-PS",
  sheet_url = "link to sheet",
  sheet_name = "sheet name",
  column_name = "column name"
  max_score = 4,
  email = "name@algorit.ma"
)
```
