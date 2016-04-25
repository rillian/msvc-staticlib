# Build description for nmake

main.exe: main.obj bar.lib
	link /out:$@ $<

foo.lib: foo.obj
	lib $<

bar.lib: bar.obj
	lib $<
