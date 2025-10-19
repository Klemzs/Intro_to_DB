import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Jesuslord4545?"
)

mycursor = mydb.cursor()

mycursor.execute("USE alx_book_store")

customer_data = "INSERT INTO Customers (customer_name, email, address)  VALUES (%s, %s, %s)"
customer_value = ("Cole Baidoo", "cbaidoo@sandtech.com","123 Happiness Ave." )

mycursor.execute(customer_data, customer_value)

mydb.commit()

print(mycursor.rowcount)

mycursor.close()
mydb.close()
