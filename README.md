What is cloe_run?
=================
Simplifying, it is a tool for running any command in continous loop. ```cloe_run``` is a **C**ontinous **Lo**op **E**xecution tool. It has several other features such as:

- Finish the execution loop at the next iteration by sending a ```TERM``` signal.
- Suspending (pausing) the execution of the next loop until resumed.
- Loading environment variables from a set of predefined configuration files.
- Can be configured from ```.conf``` files and/or from environment variables.
- Executing commands before and/or after each loop main command.
- Doing a single execution by using a specific flag for debugging purposes.
- Logging command output (both ```STDOUT``` and ```STDERR```) to a file.
- Displaying execution status in ```screen``` terminal windows.
- Timestamping each output line.

Basic usage
===========
Configuration of ```cloe_run``` is done via environment variables. Most, but not all of them begin with the ```CLOE_RUN_``` prefix. The only required variable to run is ```CLOE_RUN_BIN```, which designates the command you want to run in loop. Example:
```
$ CLOE_RUN_BIN="ls -lA" ./cloe_run
```
The above command line sets de required variable and launches ```cloe_run```, which will start executing the ```ls -lA``` in continous loop until interrupted with ```CTRL+C```.

Configuration file usage
========================
You can create a configuration file with the desired configuration parameters and pass it to ```cloe_run``` as its first parameter. Create a file named ```test.conf``` with the content:
```
CLOE_RUN_BIN="ls -Al"
SLEEP=5s
```
After saving, invoke ```cloe_run``` like this:
```
$ ./cloe_run test
```
Note that you must omit the ```.conf``` extension, since it's added automatically. This will run the same command as before, with a 5 second sleep. The ```SLEEP``` parameter is passed directly to the ```sleep``` command, so it accepts the same values, such as 5s, 1m, 2h and so on. Check ```sleep``` manpage to find more.

Execution control
=================
TODO


Configuration parameters
========================
TODO