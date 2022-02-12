import mariadb as db
import dbcreds


def connect_db():
    conn = None
    cursor = None
    try:
        conn = db.connect(user=dbcreds.user, password=dbcreds.password,
                          host=dbcreds.host, port=dbcreds.port, database=dbcreds.database)
        cursor = conn.cursor()
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except:
        print("Something went wrong!")
    return conn, cursor


def disconnect_db(conn, cursor):
    try:
        cursor.close()
    except:
        print("The issue with cursor")
    try:
        conn.close()
    except:
        print("The issue with connection")


def list_all_bags():
    bags = []
    conn, cursor = connect_db()
    try:
        cursor.execute(
            "select id, name, price, image_url from item")
        bags = cursor.fetchall()
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except db.ProgrammingError:
        print("Error running DB query, please file bug report")
    except:
        print("Something went wrong!")
    disconnect_db(conn, cursor)
    return bags


def add_item(bag_id):
    success = None
    conn, cursor = connect_db()
    try:
        cursor.execute(
            "update item set quantity = quantity + 1 where id = ?", [bag_id])
        conn.commit()
        if(cursor.rowcount == 1):
            success = True
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except db.ProgrammingError:
        print("Error running DB query, please file bug report")
    except:
        print("Something went wrong!")
    disconnect_db(conn, cursor)
    return success


def delete_bag(bag_id):
    success = None
    conn, cursor = connect_db()
    try:
        cursor.execute(
            "delete from item where id = ?", [bag_id])
        conn.commit()
        if(cursor.rowcount == 1):
            success = True
    except db.OperationalError:
        print("Something is wrong with the DB, please try again in 5 minutes")
    except db.ProgrammingError:
        print("Error running DB query, please file bug report")
    except:
        print("Something went wrong!")
    disconnect_db(conn, cursor)
    return success
