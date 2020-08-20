sudo docker run -d -p 8089:8089 \
-e LOCUST_LOCUSTFILE_URL='https://github.com/davnm5/ChatBot-Distribuido/blob/master/load-test/locustfile.py' \
-e LOCUST_TARGET_HOST='http://pc776.emulab.net:30001/chat' \
--name locust peterevans/locust:latest
