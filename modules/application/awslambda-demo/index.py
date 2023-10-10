
import os
from pymongo import MongoClient

username = os.environ['MONGODB_USERNAME']
password = os.environ['MONGODB_PASSWORD']

client = MongoClient(host="mongodb+srv://app-dev-pl-0.uxs7t.mongodb.net/", username=username, password=password)


def lambda_handler(event, context):
    # Name of database
    db = client.sample_restaurants

    # Name of collection
    collection = db.restaurants

    result = collection.find_one()
    print(result)

