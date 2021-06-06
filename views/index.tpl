% rebase('layout.tpl', title='Home Page')


 <img src= "static\image\banner.png">
 <form>

 <style> 
    .center
    {
            position: absolute;
            top: 5%;
            left: 25%;
    }
    .block-left
    {
        width:50%;
        height:800px;
        overflow:auto;
        float:left;
    }
    .block-right
    {
        width:50%;
        height:800px;
        overflow:auto;
    }
</style>

<div class="row">
    <div class="col-md-4">
        <h2>Porgs</h2>
        <img src= "static\image\porgi.jpg">
        <p>They're from Ahch-To. Luke called them porgs. They're adorable.</p>
        <p><a class="btn btn-default" href=/Porgs>Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Ewoks</h2>
        <img src= "static\image\ewoks.jpg">
        <p>The Ewoks are fierce warriors. The top of the food chain on a savage planet!</p>
        <p><a class="btn btn-default" href=/Ewoks>Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Wookiee</h2>
        <img src= "static\image\Wookiee.png">
        <p>It's not wise to upset a Wookiee.</p>
        <p><a class="btn btn-default" href=/Wookiee>Learn more &raquo;</a></p>
    </div>
</form>

