% rebase('layout.tpl', title='Home Page')
<form method="post" action="" class="form">
%with open ("Comments.txt", encoding="utf-8") as file:
    %text = file.read()
<!------------------------------------ Список стилей элементов ---------------------->


<!--стиль для разбиения формы на 2 части-->
<style>
    .block-left{
        width:50%;
        height:800px;
        overflow:auto;
        float:left;
        }
    .block-right{
        width:50%;
        height:800px;
        overflow:auto;
        }
</style>


<body class =center>
    <!--Левый блок формы-->
    <div  class=block-left id=left>
    <!--Поле фамилии-->
     <p>
         <label for="lastname"><span class="formTextRed">*</span> Surname:</label>
         <input type="text" name="lastname" id="lastname" />
     </p>
     <!--Поле имени-->
     <p>
         <label for="firstname"><span class="formTextRed">*</span> Name:</label>
         <input type="text" name="firstname" id="firstname" />
     </p>
     <!--Поле почты-->
     <p>
         <label for="email"><span class="formTextRed">*</span> Email:</label>
         <input type="text" name="email" id="email" />
     </p>

     <!--Поле ввода комментария-->
     <p>
         <label for="comment"><span class="formTextRed">*</span> Comment:</label>
         <textarea class=textarea1 rows="10" name="comment" id="comment"></textarea>
     </p>
     <!--кнопка отправить-->
     <p class="submit">
         <input type="submit" value="Send" />
     </p>
    </div>
    <!--правый блок формы-->
    <div class=block-right>
    <!--Поле комментариев-->
     <p>
      <textarea class=textarea2 id="text" name="text" rows=30 readonly>{{text}} </textarea>
     </p>
    </div>
</body>
 </form>
