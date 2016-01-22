2UTF8 = perl -pC -E 's/\\u(....)/chr(hex($$1))/ge'
all:

writers-non-artists:
	perlrdf query -f writers-non-artists.rq --endpoint http://dbpedia.org/sparql | $(2UTF8)
writers-and-artists:
	perlrdf query -f writers-and-artists.rq --endpoint http://dbpedia.org/sparql | $(2UTF8)

test2:
	perlrdf query -f multi-source.rq --endpoint http://dbpedia.org/sparql | $(2UTF8)
