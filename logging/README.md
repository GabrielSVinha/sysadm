# Accounting Bash

Shell to control cpu usage per user.

## Run

To run, set the file permissions:

```
chmod +x bash
```

Then run the script:

```
./bash
```

This will start a prompt to run your commands.

## Report

The logs file will be located in `$HOME/.logs` and divided by user in each folder. To run a report for a specific month (for the current user), run the script located in this directory:

```bash
./report.sh <month> <year>
```
This will output:

```
Tempo total de uso: 66
Tempo total sys: 21
Tempo total user: 9
      1 clear
      1 ks
      3 ls
      2 python
      1 reset
      3 sleep
      1 stress
      1 wget
```

With the correct data for the passed month and year.
