sudo docker run -d -p 8089:8089 \
-e LOCUST_LOCUSTFILE_URL='https://example.com/locustfile.py' \
-e LOCUST_TARGET_HOST='http://pc776.emulab.net:30001/chat' \
--name locust peterevans/locust:latest