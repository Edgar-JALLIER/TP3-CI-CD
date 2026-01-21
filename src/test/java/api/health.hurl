GET http://host.docker.internal:8080/health

# On attend un code 200 OK
HTTP 200
# On vérifie que c'est bien du JSON qui est renvoyé
[Asserts]
header "Content-Type" contains "application/json"
jsonpath "$.status" == "UP"