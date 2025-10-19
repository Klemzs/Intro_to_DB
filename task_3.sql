import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "Jesuslord4545?",
    database = "alx_book_store"
)

mycursor = mydb.cursor()

mycursor.execute("SHOW TABLES")

tables = mycursor.fetchall()
for table in tables:
    print(table[0])

mycursor.close()
mydb.close()
