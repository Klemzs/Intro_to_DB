import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Jesuslord4545?"
)

mycursor = mydb.cursor()

mycursor.execute("USE alx_book_store")

customer_data = "INSERT IGNORE INTO Customers (customer_id, customer_name, email, address)  VALUES (%s, %s, %s, %s)"
customer_value = (1,"Cole Baidoo", "cbaidoo@sandtech.com","123 Happiness Ave." )

mycursor.execute(customer_data, customer_value)

mydb.commit()

print(mycursor.rowcount)

mycursor.close()
mydb.close()
