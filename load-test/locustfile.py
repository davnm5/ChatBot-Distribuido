import time
from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 2)
    with open("list_msg") as f:
        list_msg = f.read().splitlines()
        
    @task
    def index_page(self):
        self.client.get("/properties")
        self.client.get("/form")

    @task(3)
    def view_item(self):
        for msg in list_msg:
            self.client.get(f"/input?msg={msg}", name="/input")
            time.sleep(1)

    def on_start(self):
        self.client.get("/chat")