from bottle import post, request
import re
import pdb
import json
import test_1
import test_2
@post('/index', method='post')
def my_form():
    questions={}
    #mail = request.forms.get('ADRESS')
    #qwer =  request.forms.get('QUEST')
    mail='fgf@mail.ru'
    qwer='gfhfgh'
    if qwer=="" or  mail=="":
         return "Not all fields are filled "
    else:
        match = re.search(r'([@]mail[.]ru)', mail)
        if match!=None:
            questions[mail]=qwer
            with open ('data.txt', 'a') as outfile:
                jp = json.dumps(questions)
                open('data.txt', 'a').write('\n' + jp)
            return ("Thanks! The answer will be sent to the mail %s" % mail)
        else:
            return "This mail doesn't exist %s"% mail
