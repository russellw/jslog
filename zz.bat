copy *.js %temp%
for %%x in (*.js) do cl /FI%~dp0\zz.h /EP %%x >%%x.i && move %%x.i %%x
