GET http://host.docker.internal:8080/api/orders
HTTP 200
[Asserts]
# On vérifie qu'on reçoit bien un tableau JSON avec au moins un élément
jsonpath "$" count == 2
# On vérifie le premier produit
jsonpath "$[0].product" == "Laptop"