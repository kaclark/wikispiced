.TL
Spin Testing Log
.AU
Keanu Clark
.AB
These logs are for reporting on exercies inspired by the reading of Gerard Holzmann's Spin Model Checker Primer and Reference Manual IBSN 0-321-77371-3. Concurrency is a natural feature of the world we endure, live, and die in. To model it is to approach succintess and depth of expression without losing potency. May we find new strength in these manners of speaking and declaring exactly what may not be spoken in our games among these meta languages.
.AE
.SH
Hello World
.PP
Chapter 2 pp9, in homage to the first C programming manual authored by Kernighan and Ritchie in 1978, opens with a demonstration of printing 'Hello World'. cf hello-world.pml. Given our era of so many languages, I think it fair to quote at length what is offered in Chapter 2 on page 9:
.QP
If you have done some programming in C, all this will look familiar as will many other features of the language that we encounter later. But there are some important differences. To begin with a few notable ones, from this example: active and proctype are keywords in the language, but main is not. That is, we could have used any other non-reserved word instead of main in this context. Next, there is no semicolon at the end of the printf statement, where in C this would be required. The reason is that the semicolon is defined as a statement sparator in our new language, not as a statement terminator. This minor detail can of course quickly become a nuisance, so Spin's parser is lenient on this issue. If you happen to type a semicolon where none is required, the parser will forgive you and quietly ignore it
.PP
I use print statements often in python, so I think it is of worth to mention what is said in Chapter 2 on page 10: 
.IP
The definition of printf is pretty much the same in Prolema as it is in C. Many of the standard conversion formats are recognized such as %c, %d, %u, %o, %x, and special characters such as \t, and \n have the same meaning as in C.
.PP
To define loops, :: is used. The statement after it is called the guard statement, and it must be true for the block to execute. While similar to an if, else loop, else is not required and the design structure of prolema suggests that such verbosity can be left unspoken altogether. Notably, this is what gives the semicolon its grand signifying power.
.PP
(condition = S) -> ...
.PP
is not at all different from merely saying
.PP
(condition = S); ...
.PP
The semicolon no longer means to terminate, but to transition state. It has become an arrow, no longer a stutter in the process. On page 12, the nuance is offered that when a statement may potentially block does an arrow appear. All other statements are adorned with semicolon. A further word is now to be offered in favor of else. By way of expressing
.PP
!(condition = S)
.PP 
we have come to say just what else does. There is something notable about the non-deterministic nature of concurrent processes. If two blocks are defined without else statements, and both are true, either could be selected. If statements are limited to a single else. There will not be chains of else if, but there can be an array of blocks which could all resolve to true concurrently.
.PP
As is always the case when toying with loops, infinite depth from an improperly arranged process can occur. In order to mitigate this, a depth can be declared as spin is run with the option -uN such as -u14 for depth of 14(pp. 14).
