Ping.Script
===========

A simple Powershell script to do some basic network testing

Ping.Script exists because the built in ping tool in windows does not provide timestamps making it difficult to troubleshoot network issues.

Simple Usage

```
./Ping.ps1 -HostName www.foo.bar -LogFile mylog.html -ErrorLogFile errorLog.html -TimeBetweenPings 5
```