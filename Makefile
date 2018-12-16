pkgname = adobemapping
tgz = $(pkgname).tgz
tar = gnutar

dist:
	# CTAN prefers top level directory, so
	# I use --transform option of GNU tar.
	$(tar) -czf $(tgz) \
	  --exclude .svn \
	  --exclude .git \
	  --exclude [Dd]eprecated \
	  --transform "s,^,$(pkgname)/," \
	  README \
	  cmap-resources mapping-resources-pdf
	echo; ls -l $(tgz); echo
	$(tar) tf $(tgz) | sort; echo
