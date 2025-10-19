import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Jesuslord4545?",
    database="alx_book_store"
)

mycursor = mydb.cursor()

customer_data = "INSERT INTO customers (customer_id, customer_name, email, address) VALUES (%s, %s, %s, %s)"
customer_values = [
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.')
]

mycursor.executemany(customer_data, customer_values)
mydb.commit()

print(f"Rows inserted: {mycursor.rowcount}")

mycursor.close()
mydb.close()
