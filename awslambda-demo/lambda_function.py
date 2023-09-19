
import os
from pymongo import MongoClient

client = MongoClient(host="mongodb+srv://gefterchongong:%23%40theD00r@adcluster5-pl-0.uxs7t.mongodb.net/")


def lambda_handler(event, context):
    # Name of database
    db = client.sample_restaurants

    # Name of collection
    collection = db.restaurants

    result = collection.find_one()
    print(result)

