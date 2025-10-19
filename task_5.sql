import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Jesuslord4545?",
    database="alx_book_store"
)

mycursor = mydb.cursor()

# Delete the specific customer that's causing conflict
mycursor.execute("DELETE FROM customers WHERE customer_id = 1")

print(f"Deleted {mycursor.rowcount} conflicting customers")

# Now insert the new customer
customer_data = "INSERT INTO customers (customer_id, customer_name, email, address) VALUES (%s, %s, %s, %s)"
customer_value = (1, "Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave.")

mycursor.execute(customer_data, customer_value)
mydb.commit()

print(f"Customer inserted with ID: {customer_value[0]}")

mycursor.close()
mydb.close()
