import sqlite3

# connection
connection = sqlite3.connect("products.db")
cursor = connection.cursor()

# # ===== Create a Table =====
# cursor.execute("""CREATE TABLE users(
#     username text,
#     age integer,
#     email text
# )""")
# ============================================================================== #

# # ===== Insert Values =====
# cursor.execute("INSERT INTO users VALUES('Jeff', 20, 'testemail@email.com')")
# ============================================================================== #

# # ===== Inserting multiple Values with placeholders =====
# users_to_insert = [
#     ('James', 21, 'james@email.com'),
#     ('Jeremy', 21, 'jeremy@email.com'),
#     ('Schubert', 21, 'schubert@email.com')
# ]
# # Question marks represent the placeholder values
# cursor.executemany("INSERT INTO users VALUES(?, ?, ?)", users_to_insert)
# # ============================================================================== #


# ===== Selecting Data from the database =====
# cursor.execute("SELECT * FROM users")  # Selects all data
# cursor.execute("SELECT rowid, * FROM users")  # Includes a row id in your select request
# print(cursor.fetchone())
# print(cursor.fetchmany(3))  # Gets a certain number of entries
# print(cursor.fetchall())  # Gets all the data and returns it as a list
# === LIMIT ===
# cursor.execute("SELECT * FROM users LIMIT 2") # Max number of entries the program gets
# # ============================================================================== #

# ===== WHERE Clause =====
# cursor.execute("SELECT * FROM users WHERE username='James'") # finds all entries that meet a certain criteria
# cursor.execute("SELECT * FROM users WHERE age>=21")
# === LIKE Clause ===
# cursor.execute("SELECT * FROM users WHERE username LIKE 'J%'")  # Looks for entries where username starts with J
#                                                                 # % just means any character/s
# print(cursor.fetchall())
# === AND/OR ===
# cursor.execute("SELECT * FROM users WHERE age=21 AND username='Jeremy'")
# cursor.execute("SELECT * FROM users WHERE age=21 OR username='Schubert'")
# print(cursor.fetchall())
# # ============================================================================== #

# # ===== UPDATE =====
# cursor.execute("UPDATE users SET age = 22 WHERE username='Schubert'")
# cursor.execute("UPDATE users SET age = 21 WHERE rowid=1") # can also be done with rowid
# # ============================================================================== #

# ===== DELETE =====
# cursor.execute("DELETE FROM users WHERE username='Jeff'")
# can also be done with rowid
# # ============================================================================== #

# ===== ORDER ======
# cursor.execute("SELECT * FROM users ORDER BY age") # Ascending
# cursor.execute("SELECT * FROM users ORDER BY age DESC") # Descending
# # ============================================================================== #

# commit changes
connection.commit()

# close connection
connection.close()
