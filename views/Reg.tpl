% rebase('layout.tpl', title='Home Page')
<form action="/Reg" method="post">

<style>
   .center {
    width: 100px;
    padding: 10px;
    margin-left: -200px;
    position: absolute;
    left: 50%;
    top: 30%;
   }
</style>

<div class = center>
        <p><textarea rows="2" cols="50" name="QUEST" placeholder="Your question"></textarea></p> 
        <p><input type="text" size="50" name="ADRESS" placeholder="Your email"></p>
        <class="btn btn-default"><input type="submit" value="Send">
</div>
</form>
