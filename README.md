# WorldBankWebApp
This project is my first Python Flask Web App to visualize online a Data
Analysis of the World Bank Data.

### Table of Contents

1. [Installation](#installation)
2. [Project Motivation](#motivation)
3. [File Descriptions](#files)
4. [Results](#results)
5. [Licensing, Authors, and Acknowledgements](#licensing)

## Installation <a name="installation"></a>

The project was created with Python 3.8.0.
Best Install the virtual environment using the requirements.txt.
The follwing packages are mainy used:
- pandas
- plotly
- flask
- gunicorn

## Project Motivation<a name="motivation"></a>

Motivation of this project was to visualize data online and interactively
using Python Flask. The data shown in the Web App is retrieved from
[World Bank Website](https://www.worldbank.org).


## File Descriptions <a name="files"></a>
In the first static version without API-usage, the app uses data stored in the **data/** folder.

The data is cleaned and prepared for plotting in
the file **wrangle_data.py**.

The html template is defined in **index.html** containing divs for the plots.

The file **routes.py** imports the perpared figures from **wrangle_data.py** to plot them inside the **index.html**.

```
WorldBankWebApp/
│
├── README.md
├── WB_WebApp
│   ├── worldbankapp
│   │   ├── __init__.py
│   │   ├── __pycache__/
│   │   ├── routes.py
│   │   ├── static/
│   │       ├── img/
│   │       │  ├── githublogo.png
│   │       │  ├── linkedinlogo.png
│   │       ├── templates/
│   │           ├── index.html
│   ├── wrangling_scripts/
│   │   ├── __pycache__/
│   │   ├── wrangle_data.py/
│   ├── data/
│   │   ├── *.csv
├── worldbank.py
├── requirements.txt
├── Procfile

```


## Results<a name="results"></a>
The results can be seen locally with following the steps:
* create virtual environment in folder **WorldBankWebApp/**:
  - `python3 -m venv worldbank_webapp_env`
* activate the virtual environment:
  - `source worldbank_webapp_env/bin/activate`
* pip install required packages:
  - `pip install -r requirements.txt`
* change directory to **WB_WebApp**:
  - `cd WB_WebApp'
* start Flask Web App:
  - python worldbankapp.py
* Now open in your browser the following url:
  - `http://0.0.0.0:3001/`

## Licensing, Authors, Acknowledgements<a name="licensing"></a>

I give credit to the World Bank for the data. You find the Licensing and data
at [World Bank Website](https://www.worldbank.org).

Feel free to use my code as you please:

Copyright 2020 Leopold Walther

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
