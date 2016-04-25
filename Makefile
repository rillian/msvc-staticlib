# Build description for nmake

main.exe: main.obj bar.lib
	link /out:$@ main.obj bar.lib

.obj.lib:
	lib $<

clean:
	del *.obj
	del *.lib
	del main.exe
