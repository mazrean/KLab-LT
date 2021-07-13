USER=mazrean
PASSWORD=password
KEY=api_key
URL=http://localhost:3000

setup:
	curl -X POST\
		-H "Content-Type: application/json"\
		-d '{"key":"${KEY}", "name":"${USER}", "cred": "${PASSWORD}"}'\
		${URL}/new

reset:
	curl -X PUT\
		-H "Content-Type: application/json"\
		-d '{"key":"${KEY}", "name":"${USER}"}'\
		${URL}/reset
