% rebase('layout.tpl', title='Home Page')
<form method="post" action="" class="form">
%with open ("Comments.txt", encoding="utf-8") as file:
    %text = file.read()
<!------------------------------------ ������ ������ ��������� ---------------------->


<!--����� ��� ��������� ����� �� 2 �����-->
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
    <!--����� ���� �����-->
    <div  class=block-left id=left>
    <!--���� �������-->
     <p>
         <label for="lastname"><span class="formTextRed">*</span> Surname:</label>
         <input type="text" name="lastname" id="lastname" />
     </p>
     <!--���� �����-->
     <p>
         <label for="firstname"><span class="formTextRed">*</span> Name:</label>
         <input type="text" name="firstname" id="firstname" />
     </p>
     <!--���� �����-->
     <p>
         <label for="email"><span class="formTextRed">*</span> Email:</label>
         <input type="text" name="email" id="email" />
     </p>

     <!--���� ����� �����������-->
     <p>
         <label for="comment"><span class="formTextRed">*</span> Comment:</label>
         <textarea class=textarea1 rows="10" name="comment" id="comment"></textarea>
     </p>
     <!--������ ���������-->
     <p class="submit">
         <input type="submit" value="Send" />
     </p>
    </div>
    <!--������ ���� �����-->
    <div class=block-right>
    <!--���� ������������-->
     <p>
      <textarea class=textarea2 id="text" name="text" rows=30 readonly>{{text}} </textarea>
     </p>
    </div>
</body>
 </form>
