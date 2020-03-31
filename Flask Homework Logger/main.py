from flask import Flask, render_template, request, jsonify, url_for, redirect
from flask import Flask
import json
import requests
import datetime
from time import gmtime, strftime

app = Flask(__name__)
app.config['TEMPLATES_AUTO_RELOAD'] = True
@app.route('/', methods=['GET', 'POST'])
def index():
  if request.method == 'GET':
    return render_template("index.html")
  else: # POST
    homeworkreq = request.form.get('homework')
    notesreq = request.form.get('notes')
    ddreq = request.form.get('dd')
    subreq = request.form.get('subjects')
    id_value = int(strftime("%Y%m%d%H%M%S"))
    teacherreq = ""
    if subreq == "Do you want to play my game?" and "smalzd":
      return render_template("game.html")
    elif homeworkreq == "":
      return render_template("index.html")
    elif homeworkreq == "rickroll":
      return redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ') 
    elif homeworkreq == "don":
      return redirect('https://lizardon.ddns.net/analogmain.html')
    elif homeworkreq == "egghunt":
      return render_template("indextheorist.html")
    elif subreq == "H2 Physics":
      teacherreq = "Mr Teo"
    elif subreq == "H2 Computing":
      teacherreq = "Mr Gi"
    elif subreq == "H2 Math":
      teacherreq = "Mr Chew"
    elif subreq == "H2 Economics":
      teacherreq = "Ms Lim"
    elif subreq == "H1 GP":
      teacherreq = "Ms Goh"
    else:
      teacherreq = "Ms Lim"
      
    # load json data from file 
    with open("templates/homework.json", 'r') as infile:
        # read from json file
        
        homework = json.load(infile)
        print(homework) # this is a list
        homework_value = homeworkreq
        notes_value = notesreq
        duedate_value = ddreq
        subject_value = subreq
        teacher_value = teacherreq

        new_homework = {}
        new_homework["id"] = id_value
        new_homework["title"] = homework_value
        new_homework["info"] = notes_value
        new_homework["duedate"] = duedate_value
        new_homework["subject"] = subject_value
        new_homework["teacher"] = teacher_value
        
        # add to homework list
        homework.append(new_homework)
        
        with open("templates/homework.json", 'w') as outfile:
            # write to json file
            json.dump(homework, outfile)
    
    if ddreq == "2020-03-23":
      return render_template("indexbirthday.html")
    elif subreq == "H2 Computing":
      return render_template("indexcomputing.html")
    else:
      return render_template("index.html", homework=homeworkreq, notes=notesreq, dd=ddreq)

@app.route('/homework')
def homework():
  return render_template('homework.json')

@app.route('/github')
def github():
  return redirect('https://www.github.com')
  
app.run(host='0.0.0.0', port=8080)

