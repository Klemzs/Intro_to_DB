import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Jesuslord4545?"
)

mycursor = mydb.cursor()

mycursor.execute("USE alx_book_store")
mycursor.execute("DESCRIBE Books")

result = mycursor.fetchall()

for row in result:
    print(row)

mycursor.close()
mydb.close()
