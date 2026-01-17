@echo off
cd /d C:\Users\john\Projects\ha-stt-wyoming
call C:\Users\john\Projects\ha-stt-wyoming\venv\Scripts\activate.bat

python -m wyoming_faster_whisper ^
  --uri "tcp://0.0.0.0:10300" ^
  --language en ^
  --model large-v3 ^
  --device cuda ^
  --data-dir ".\data" ^
  --download-dir ".\data"
