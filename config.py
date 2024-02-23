
SECRET_KEY = 'AbCDD'

SQLALCHEMY_DATABASE_URI = \
    '{dbms}://{username}:{password}@{server}:{port}/{database}'.format(
        dbms='mysql+mysqlconnector',
        username='root',
        password='081518Pa!',
        server='localhost',
        port='3306',  # Substitua 'sua_porta' pela porta desejada
        database='agenda')
