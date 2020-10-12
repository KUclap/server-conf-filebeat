build:
	docker build -f ./docker/Filebeat.Dockerfile .
run:	
	docker run -v ${v}:${v} ${cid} 
	# v = volumn, cid = container id