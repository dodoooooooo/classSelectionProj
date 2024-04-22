from flask import Flask, request, render_template, redirect, url_for, jsonify
import yaml
import mysql.connector as mc
from Search import osearch
from enrolled_table import getschedlue
from init import student_data
from add_withdraw import add_course, withdraw

UN = ""

def load(filename="config.yml"):
    with open(filename, "r", encoding="utf-8") as config_file:
        return yaml.load(config_file, Loader=yaml.Loader)

import_data = load()

app = Flask(__name__)

conn = mc.connect(host=import_data.get('database', {}).get('host', ''),
                  port=import_data.get('database', {}).get('port', ''),
                  user=import_data.get('database', {}).get('user', ''),
                  passwd=import_data.get('database', {}).get('password', ''),
                  database=import_data.get('database', {}).get('database', ''))

# login
@app.route("/")
def homepage():
    return render_template("index.html")    

@app.route("/", methods=["POST"])
def checklogin():
    global UN
    cursor = conn.cursor()

    UN = request.form.get('Username')
    PW = request.form.get('Password')
    
    student = student_data(UN, conn)
    getschedlue(conn, UN)
    query1 = 'SELECT S_ID, S_pwd FROM Student WHERE S_ID=%s AND S_pwd=%s;'
    
    cursor.execute(query1, (UN, PW))
    result = cursor.fetchall()
    # print(f"login: {result}\n")
    
    schedule_data = getschedlue(conn, UN)
    
    cursor.close()

    if len(result) == 1:
        return redirect(url_for('searchpage', student=student, schedule_data=schedule_data))
    else:
        return redirect("/")

# search
@app.route('/search', methods=['GET', 'POST'])
def searchpage():
    student = student_data(UN, conn)
    result, cresult = osearch(conn)
    schedule_data = getschedlue(conn, UN)
    
    return render_template("search.html", student=student, schedule_data=schedule_data, courses=result, cresults=cresult)

@app.route("/enrolledtable")
def enrolltable():
    student = student_data(UN, conn)
    schedule_data = getschedlue(conn, UN)
    return render_template("enrolledtable.html", student=student, schedule_data=schedule_data)
    
@app.route('/add_course', methods=['POST'])
def add_course_route():
    data = request.get_json()
    SID = data.get('SID')
    CID = data.get('CID')
    result, error_message = add_course(SID, CID, conn)
    print(result)
    if result:
        return jsonify({'success': True})
    else:
        return jsonify({'success': False, 'error': error_message})

@app.route('/withdraw_course', methods=['POST'])
def withdraw_course_route():
    data = request.get_json()
    SID = data.get('SID')
    CID = data.get('CID')
    result, error_message = withdraw(SID, CID, conn)
    if result:
        return jsonify({'success': True})
    else:
        return jsonify({'success': False, 'error': error_message})

if __name__ == "__main__":
    app.run(debug=True)
