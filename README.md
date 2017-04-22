Low-tech JavaScript debugging can use `console.log`. However, we really want source file and line number printed alongside debug output. Furthermore, debugging is one time it's important to minimize typing. The solution is a hack using the C preprocessor.

Debug statements in your JavaScript code use the `zz` macro (chosen to be distinctive and easy to type, while unlikely to be used as an identifier; if you need to use `zz` as an identifier, change the name of the macro in `zz.h` to something else):

```
zz(some.JavaScript.expression)
```

Run `zz.bat` and all occurrences of the macro will be turned into `console.log` statements that incorporate source file and line number. This is done by using the preprocessor of Microsoft C++, which must therefore be installed. (I will be happy to accept pull requests with Unix scripts using Clang or GCC.) `zz.bat` copies all JavaScript source files in the current directory to %TEMP% before doing anything else, though personally I find `git checkout .` is the easiest way to put things back the way they were and get rid of all the debug output.

If you don't want `zz.bat` and `zz.h` cluttering up your source folder, run `install.bat` to copy them somewhere in your PATH.

The entire solution consists of only a few lines of code, so if it doesn't do exactly what you want, it should be easy to modify to your requirements.
