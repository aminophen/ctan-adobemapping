pkgname = adobemapping
tgz = $(pkgname).tgz

dist:
	tar -czf $(tgz) \
	  --exclude=.svn \
	  --exclude=[Dd]eprecated \
	  --transform="s,^,$(pkgname)/," \
	  README \
	  -C $(ks)/adobe-type-tools cmap-resources mapping-resources-pdf
	echo; ls -l $(tgz); echo
	tar tf $(tgz) | sort; echo
