% rebase('layout.tpl', title='Home Page')
<form method="post" action="" class="form">
%with open ("Comments.txt", encoding="utf-8") as file:
    %text = file.read()
<!------------------------------------ Список стилей элементов ---------------------->
<style> 

    .center {
        position: absolute;
        top: 5%;
        left: 25%;
    }

    body {
        background: #F6F9F9;
    }

    .form label {
        width: 180px;
        float: left;
    }

    .form label {
        width: 180px;
        float: left;
        color: #999;
    }

    .form input {
        width: 400px;
    }


    .textarea1 {
        width: 400px;
        max-width: 460px;
        min-width: 460px;
        line-height: 150%;
        resize: none;
    }

    .textarea2 {
        width: 400px;
        max-width: 460px;
        min-width: 460px;
        line-height: 150%;
        resize: none;

    }

    .confirm {
        float: none !important;
    }

    .form input[type="checkbox"] {
        width: auto;
    }
    .form input, .form textarea, .form select {
        padding: 9px;
        border: 1px solid #BABABA;
        border-radius: 5px;
    }
</style>

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
     <!--Поле пола-->
     <p>
         <label for="gender">Gender:</label>
         <select name="gender" id="gender">
         <option value="Male">Male</option>
         <option value="Female">Female</option>
         </select>
     </p>
     <!--Поле страны-->
     <p>
         <label for="country">Country:</label>
         <select name="country" id="country">
         <option value="Russia">Russia</option>
         <option value="America">America</option>
         <option value="Australia">Australia</option>
         <option value="India">India</option>
         <option value="China">China</option>
         </select>
     </p>
     <!--Поле Даты-->
     <p>
        <label for="Date"><span class="Date">*</span> Select Date:</label>
        <input name="Date" type="date" name="calendar">
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
