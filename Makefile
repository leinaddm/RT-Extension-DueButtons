version=0.01

archive:
	mkdir RT-Extension-DueButtons
	rsync -av html lib RT-Extension-DueButtons
	tar cfvz RT-Extension-DueButtons-$(version).tar.gz RT-Extension-DueButtons
	rm -rf RT-Extension-DueButtons

