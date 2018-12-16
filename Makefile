pkgname = adobemapping
tgz = $(pkgname).tgz

dist:
	tar -czf $(tgz) \
	  --exclude .svn \
	  --exclude .git \
	  --exclude [Dd]eprecated \
	  README \
	  cmap-resources mapping-resources-pdf
	echo; ls -l $(tgz); echo
	tar tf $(tgz) | sort; echo
