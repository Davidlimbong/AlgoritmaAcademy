# AlgoritmaAcademy
Algoritma Academy Internal Package



## Installation

To install the package use the following command:

```
devtools::install_github("Davidlimbong/AlgoritmaAcademy")
```


## How to use `corgi_score()`
The function received some parameter.
- `Connection` Database connection
- `S_CHANNEL` Slack channel
- `S_USERNAME` Slack user name
- `S_API_TOKEN` Slack API token
- `workshop_ID` Algoritma workshop id

```
library(AlgoritmaAcademy)

corgi_score(
  github = link to the course on corgi.re,
  sheet_url = google spreadsheet link, 
  sheet_name = name of sheet,
  column_name = the column that you want to update, 
  max_score = maximum score
  email = your algoritma email
  
)
```
