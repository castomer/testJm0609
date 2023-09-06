@echo off
setlocal enabledelayedexpansion

rem Задаем текущую дату и время в формате yyyyMMddHHmmss
set datetime=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%

rem Запускаем JMeter с уникальным именем файла результатов
bin\jmeter.bat -n -t scripts\project.jmx -l scripts\results\results_!datetime!.csv