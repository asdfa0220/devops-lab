
#!/bin/bash

tail -f /app/app.log | while read line
do
  if echo $line | grep "ERROR"
  then
    echo "[ALERT] $line"
  fi
done
