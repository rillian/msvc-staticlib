# Build description for nmake

main.exe: main.obj bar.lib
	link /out:$@ main.obj bar.lib

foo.lib: foo.obj
	lib foo.obj

bar.lib: bar.obj foo.lib
	lib bar.obj

clean:
	del *.obj
	del *.lib
	del main.exe
