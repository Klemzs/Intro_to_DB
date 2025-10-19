import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Jesuslord4545?"
)

mycursor = mydb.cursor()

mycursor.execute("USE alx_book_store;")
mycursor.execute("SHOW TABLES")

tables = mycursor.fetchall()
for table in tables:
    print(table[0])

mycursor.close()
mydb.close()
