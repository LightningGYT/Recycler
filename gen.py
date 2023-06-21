import pyodbc
import os
from dataclasses import dataclass
import random
import string
import names
from tkinter.filedialog import askopenfilename
from progress.bar import Bar
import datetime
from datetime import timedelta
from random import randrange

def get_random_string(length):
    # choose from all lowercase letter
    letters = string.ascii_lowercase
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str

def random_date(start, end):
    """
    This function will return a random datetime between two datetime 
    objects.
    """
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)

@dataclass
class Login:
    id:int
    Username:str
    Password:str
    salt:str

@dataclass
class Teacher:
    id:int
    Name:str
    Surname: str
    login: Login
    admin: bool

@dataclass
class Student:
    id:int
    Name:str
    Surname:str
    login: Login

@dataclass
class Class:
    id:int
    grade:int
    teacher: Teacher

@dataclass
class ClassList:
    id:int
    student:Student
    clas : Class

@dataclass
class Recycle:
    id:int
    student:Student
    material_id:int
    Weight:int
    Date: datetime.date
    

def main():
    try:
        conn = pyodbc.connect(r"Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq=C:\Users\Thomas\Desktop\projects\Recycler\Recycler.mdb;")
    except:
        path = askopenfilename(defaultextension=".mdb")
        try:
            conn = pyodbc.connect(r"Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq="+ path +";")
        except:
            exit(69)
    cursor = conn.cursor()

    def gen_login(user) -> Login:
        if type(user) == Student:
            username = user.Name.lower() + user.Surname.lower().replace(" ", "")
        elif type(user) == Teacher:
            username = user.Surname.lower().replace(" ", "")

        password:str = get_random_string(8)
        salt = '*'
        tries = 0
        while True:
            try:
                username = username if tries < 1 else username + str(tries)
                cursor.execute("INSERT INTO Login (username, password, salt) VALUES (?, ?, ?)", username, password, salt)
            except:
                tries +=1
            else:
                break
        cursor.commit()
        cursor.execute("SELECT * FROM Login WHERE (Username =?) AND (password = ?)", username, password)

        info = cursor.fetchone()

        return Login(info[0], info[1], info[2], info[3])

    def gen_Students() -> Student:
        name = names.get_first_name()
        surname = names.get_last_name()

        s = Student(None, name, surname, None)

        id = gen_login(s)

        s.login = id

        cursor.execute("INSERT INTO Student (Student_Name, Student_Surname, Login_ID) VALUES (?, ?, ?)", name, surname, id.id)
        cursor.commit()
        cursor.execute("SELECT * FROM STUDENT WHERE Login_ID = ?", id.id)
        
        s.id = cursor.fetchone()[0]

        return s
        
    def gen_Teacher() -> Teacher:
        name = names.get_first_name()
        surname = names.get_last_name()
        t = Teacher(None, name, surname, None, random.choice([True, False]))

        id = gen_login(t)
        t.login = id

        cursor.execute("INSERT INTO Teacher (Teacher_Name, Teacher_Surname, Login_ID, Admin) VALUES (?, ?, ?, ?)", name, surname, id.id, t.admin)
        cursor.commit()
        cursor.execute("SELECT * FROM Teacher WHERE Login_ID = ?", id.id)

        t.id = cursor.fetchone()[0]

        return t

    def gen_class(grade: int|list = [8,9,10,11,12]) -> Class:
        teacher = gen_Teacher()
        gr = grade if type(grade) == int else random.choice(grade)
        
        c = Class(None, gr, teacher)

        cursor.execute("INSERT INTO Class (Grade, Teacher_ID) VALUES (?,?)", c.grade, c.teacher.id)
        cursor.commit()
        cursor.execute("SELECT * FROM Class WHERE (Teacher_ID = ?) AND (Grade = ?)", c.teacher.id, c.grade)

        c.id = cursor.fetchone()[0]

        return c
    
    def gen_class_list(c:Class, student:Student) -> ClassList:
        cl = ClassList(None, student, c)

        cursor.execute("INSERT INTO ClassList (Student_ID, Class_ID) VALUES (?,?)", cl.student.id, cl.clas.id)
        cursor.commit()
        cursor.execute("SELECT * FROM ClassList WHERE (Student_ID = ?) AND (Class_ID = ?)", cl.student.id, cl.clas.id)

        cl.id = cursor.fetchone()[0]

        return cl

    def Gen_Class(amount:int, class_size:int):
        bar = Bar("Class:\n\tProgress", max=amount*class_size)
        for j in range(amount):
            c = gen_class()
            cl : list[ClassList] = []
            for i in range(class_size):
                s = gen_Students()
                cl.append(gen_class_list(c, s))
                bar.next()
        bar.finish()

    def gen_recycle(amount:int) -> list[Recycle]:
        cursor.execute("SELECT * FROM Materials")
        materials = cursor.fetchall()

        cursor.execute("SELECT * FROM Student")
        students = cursor.fetchall()
        r : list[Recycle] = []
        for i in range(amount):
            material = random.choice(materials)
            s = random.choice(students)
            student = Student(s[0], s[1], s[2], s[3])
            d1 = datetime.datetime.strptime("1/1/2020 00:00:00", "%d/%m/%Y %H:%M:%S")
            d2 = datetime.datetime.strptime("1/1/2024 00:00:00", "%d/%m/%Y %H:%M:%S")
            date = random_date(d1, d2)
            
            wieght = random.randint(1, 25)

            cursor.execute("INSERT INTO Recycle (Student_ID, Material_ID, Recycler_Date, Weight) VALUES (?,?,?,?)", student.id, material[0], date, wieght)
            cursor.commit()
            cursor.execute("SELECT * FROM Recycle WHERE (Student_ID = ?) AND (Material_ID = ?) AND (Recycler_Date = ?) AND (Weight = ?)",  student.id, material[0], date, wieght)

            r.append(Recycle(cursor.fetchone()[0], Student, material[0], wieght, date))
        
        return r
    
    Gen_Class(30, 30)
    gen_recycle(500)

if __name__ == "__main__":
    main()
