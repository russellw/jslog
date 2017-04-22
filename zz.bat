copy *.js %temp%\*.bak
for %x in (*.js) do cl /FIzz.h /P %%x
