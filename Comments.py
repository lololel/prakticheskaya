from bottle import post, request, route, run, redirect,put
import re
import pdb
import json
@post('/Comments', method='post')
def Entry_form(): #присвоение переменным значения с сайта 
    log=[]
    Surname = request.forms.get('lastname')
    Name = request.forms.get('firstname')
    Date = request.forms.get('Date')
    email = request.forms.get('email')
    Gender = request.forms.get('gender')
    Country = request.forms.get('country')
    Comment = request.forms.get('comment')

    match = '[a-zA-Z0-9+-]+[@][a-zA-Z0-9-.]+[^.].[a-zA-Z0-9-.]{2,3}$'
    if Surname=="" or Name=="" or Date=="" or email=="" or Comment=="":
        return "Not all fields are filled "
    else:
         if (re.search(match, email)):
              f=open ("Comments.txt","a") #Открытие файла

              f.writelines("------------------------------------------------------------------------------------------"+"\n") #Запись в файл
              f.writelines("Surname: "+Surname+"\n")
              f.writelines("Name: "+Name+"\n")
              f.writelines("Date: "+Date+"\n")
              f.writelines("email: "+email+"\n")
              f.writelines("Gender: "+Gender+"\n")
              f.writelines("Country: "+Country+"\n")
              f.writelines("Comment: "+Comment+"\n")
              f.close()
                  #-----------------------------------Вывод кнопки Возвращения назад------------------------------------
              return  ('''<h2 align=center>Review has been sent, to go back click on the button</h2>'''+"<br>"+''' 
                <style>

                    h2
                    {
                    font-size: 200%;
                    font-family: Verdana, Arial, Helvetica, sans-serif;
                    color: #808080;
                    }
                    .h4 {
                    border-radius: 12px;
                    background: wight;
                    border-color: #cccccc;
                    color: black;
                    font-size: 9pt;
                    height: 70px;
                    width: 200px;
                    position: relative;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%,0);
                    }
                </style>
                    <p><a href="/Comments"><input class=h4  type="submit" value="Back"></a></p>''')
           #-------------------------------------------------------------------------------------------------------
         else:
             return"invalid number"


   


