<div id="login">
     <a name="pustekuchen"></a>
     <div id="login_text_1">
        <div style="position:absolute;left:160px;width:110px;"><?=loca("LOGIN_NAME");?></div>
        <div style="position:absolute;left:275px;width:50px;"><?=loca("LOGIN_PASS");?></div>
     </div>

     <div id="login_input">
     <table cellspacing="0" cellpadding="0" border="0"><tr style="vertical-align:top;"><td style="padding-right:4px;">
         <form name="loginForm" action="" method="POST" onSubmit="changeAction('login');" target="_self" >
         <input type="hidden" name="v" value="2">
         <span>
             <select tabindex="1" name='universe' class="eingabe" style="width:144px;">
                <option value=""><?=loca("LOGIN_CHOOSE_UNI");?></option>

<?php

    require_once "uni.php";

    // Загрузить список вселенных.
    foreach ( $UniList as $i=>$val) {
        if ( is_int($i) ) echo "<option value=\"".$val['uniurl']."\" > $i. ".loca("LOGIN_UNI")."</option>\n";
        else echo "<option value=\"".$val['uniurl']."\" >$i</option>\n";
    }

?>
              
             </select>
         </span>
         <td style="padding-right:3px;">
         <span><input tabindex="2" class="eingabe" maxlength="20" name="login"   alt=<?=loca("LOGIN_NAME");?> style="width:111px;top:0px"/></span>
         <td>
         <span><input tabindex="3" maxlength="20" type="password" class="eingabe" name="pass" style="width:113px;top:0px" alt=<?=loca("LOGIN_PASS");?> /></span>
         <td style="padding-top:2px;">
         <!--<span class="link" onclick="submitLogin()" style="padding-left:7px;">LOGIN</span>-->
         <input type="image" src="img/login_button.jpg" alt="Login" class="loginButton" name="button" id="button" onmouseover="document.getElementById('button').src='img/login_button2.jpg';" onmouseout="document.getElementById('button').src='img/login_button.jpg';">

         </form>
     </tr></table>
     </div>
     <div id="login_text_2">
        <div style="position:absolute;text-align:right;width:439px;top:15px;"><a href="#" onclick="changeAction('getpw');"><?=loca("LOGIN_REMIND");?></a></div>
        <div style="position:absolute;left:12px;width:200px;top:15px;text-align:left;"><?=loca("LOGIN_CONFIRM");?> <a target="_blank" href="#"><?=loca("LOGIN_IMPRESSUM");?></a>.</div>
     </div>   
     
     <div id="copyright">

        (C) 2013 by Game Of Thrones. All Rights Reserved&nbsp;&nbsp;
     </div>
     <div id="downmenu">
        <a href="regeln.php"><?=loca("DOWN_RULES");?></a>&nbsp;
        <a target="_blank" href="impressum.php"><?=loca("DOWN_IMPRINT");?></a>&nbsp;
        <a target="_blank" href="#"><?=loca("DOWN_TAC");?></a>

     </div>    
</div>
