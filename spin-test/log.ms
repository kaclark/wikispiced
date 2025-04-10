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
.IP
If you have done some programming in C, all this will look familiar as will many other features of the language that we encounter later. But there are some important differences. To begin with a few notable ones, from this example: active and proctype are keywords in the language, but main is not. That is, we could have used any other non-reserved word instead of main in this context. Next, there is no semicolon at the end of the printf statement, where in C this would be required. The reason is that the semicolon is defined as a statement sparator in our new language, not as a statement terminator. This minor detail can of course quickly become a nuisance, so Spin's parser is lenient on this issue. If you happen to type a semicolon where none is required, the parser will forgive you and quietly ignore it
.PP
text
