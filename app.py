import os
import mysql.connector
import random
from flask import Flask, render_template
from dotenv import load_dotenv
# Load environment variables from .env file
load_dotenv()

app = Flask(__name__)

# Database connection function
def get_db_connection():
    connection = mysql.connector.connect(
        host=os.getenv('DATABASE_HOST'),  # Host from environment variable
        user=os.getenv('DATABASE_USER'),  # User from environment variable
        password=os.getenv('DATABASE_PASSWORD'),  # Password from environment variable
        database=os.getenv('DATABASE_NAME')  # Database name from environment variable
    )
    return connection

def index():
    # Connect to the database
    connection = get_db_connection()
    cursor = connection.cursor()
    # Query to get a random image URL from the database
    cursor.execute("SELECT url FROM images ORDER BY RAND() LIMIT 1")
    random_image = cursor.fetchone()[0]  # Get the URL from the query result
    # Close the connection
    cursor.close()
    connection.close()
    # Pass the random image to the template
    return render_template('index.html', image=random_image)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.getenv('PORT', 5000)))
