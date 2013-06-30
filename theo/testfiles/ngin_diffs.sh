#!/bin/bash

diffs=("diff my_tests/good-01/index.html testOutput/good-01/index.html" \
	"diff my_tests/good-02/pageone.html testOutput/good-02/pageone.html" \
	"diff my_tests/good-03/pagetwo.html testOutput/good-03/pagetwo.html" \
	"diff my_tests/good-04/pagethree.html testOutput/good-04/pagethree.html" \
	"diff my_tests/good-05/localhost:8888/index.html testOutput/good-05/localhost:8888/index.html" \
	"diff my_tests/good-05/localhost:8888/pageone.html testOutput/good-05/localhost:8888/pageone.html" \
	"diff my_tests/good-05/localhost:8888/pagetwo.html testOutput/good-05/localhost:8888/pagetwo.html" \
	"diff my_tests/good-05/localhost:8888/pagethree.html testOutput/good-05/localhost:8888/pagethree.html" \
	"diff my_tests/good-05/localhost:8888/css/style.css testOutput/good-05/localhost:8888/css/style.css" \
	"diff my_tests/good-05/localhost:8888/images/confessionbear.jpg testOutput/good-05/localhost:8888/images/confessionbear.jpg" \
	"diff my_tests/good-05/localhost:8888/images/cupcake.jpg testOutput/good-05/localhost:8888/images/cupcake.jpg" \
	"diff my_tests/good-05/localhost:8888/images/smiley.gif testOutput/good-05/localhost:8888/images/smiley.gif" \
	"diff my_tests/good-06/localhost:8888/index.html testOutput/good-06/localhost:8888/index.html" \
	"diff my_tests/good-06/localhost:8888/pageone.html testOutput/good-06/localhost:8888/pageone.html" \
	"diff my_tests/good-06/localhost:8888/pagetwo.html testOutput/good-06/localhost:8888/pagetwo.html" \
	"diff my_tests/good-06/localhost:8888/pagethree.html testOutput/good-06/localhost:8888/pagethree.html" \
	"diff my_tests/good-06/localhost:8888/css/style.css testOutput/good-06/localhost:8888/css/style.css" \
	"diff my_tests/good-06/localhost:8888/images/confessionbear.jpg testOutput/good-06/localhost:8888/images/confessionbear.jpg" \
	"diff my_tests/good-06/localhost:8888/images/cupcake.jpg testOutput/good-06/localhost:8888/images/cupcake.jpg" \
	"diff my_tests/good-06/localhost:8888/images/smiley.gif testOutput/good-06/localhost:8888/images/smiley.gif" \
	"grep 'HTTP/1.1 200 OK' my_tests/good-07/index.html" \
	"grep 'Server: nginx/1.2.3' my_tests/good-08/index.html" \
	"diff my_tests/good-09/cupcake.jpg testOutput/good-09/cupcake.jpg" \
	"diff my_tests/good-10/confessionbear.jpg testOutput/good-10/confessionbear.jpg" \
)

echo "Running Tests. Expected output is:"
echo "HTTP/1.1 200 OK"
echo "Server: nginx/1.2.3"
echo "----------------------------------"
echo "Output:"
echo ""

for i in {0..22}
do
	eval "${diffs[$i]}"
done
