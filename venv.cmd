@echo off
if exist %cd%\env set existsFlag="true"
if %existsFlag%=="true" goto end
python -m venv env
call %cd%\env\Scripts\activate.bat
pip install -r requirements.txt
:end
if %existsFlag%=="true" echo If you would like to create virtual environment "env", please remove the current directory and try again.