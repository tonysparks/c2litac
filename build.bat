@echo off
set LITAC_PATH=C:\Users\antho\eclipse-workspace\litac\lib
set INCLUDES=C:\Program Files\LLVM\include
set LIBS=C:\Program Files\LLVM\lib
litac.exe -run -lib "%LITAC_PATH%" -buildCmd "clang.exe -o %%output%% %%input%% -D_CRT_SECURE_NO_WARNINGS -I../include -I""%INCLUDES%"" -L""%LIBS%"" -L../lib -llibclang.lib" -outputDir "./bin" -output "c2litac" "./src/main.lita"