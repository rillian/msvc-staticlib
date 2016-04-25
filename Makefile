# Build description for nmake

main.exe: main.obj bar.lib
	link /out:$@ main.obj bar.lib

foo.lib: foo.obj
	lib foo.obj

# What we want is some option to record the dependency on foo.lib
# inside bar.lib so the simple link of main.exe can find foo without
# it being on the link command line.
bar.lib: bar.obj foo.lib
	lib bar.obj

clean:
	del *.obj
	del *.lib
	del main.exe
