<?php

// TODO: подсветка кнопок

?>            <!-- LEFTMENU -->
            <div id="links">

    <ul id="menuTable" class="leftmenu">

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/dbe21bc0819f9e6f5a626cf901e4c7.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton  selected"
               href="index.php?page=overview&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Обзор</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                                    <a href="index.php?page=resourceSettings&session=<?=$session;?>"
                   class="tooltipRight js_hideTipOnMobile"
                   target="_self"
                   title="Производство сырья">
          	        <img class="mouseSwitch" 
          	             src="red_images/854c5764c231234efd3ebb0caeda37.gif" 
          	                                             height="29" width="38" 
                                       	             rel="red_images/6729ed49cd16e83b38d374b600b38e.gif"/>
          	    </a>
          	                </span>
            <a class="menubutton "
               href="index.php?page=resources&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Сырьё</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/4c01463c41c7503f24afd2d90804c6.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton "
               href="index.php?page=station&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Фабрики</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                                    <a href="index.php?page=trader&session=<?=$session;?>"
                   class="trader tooltipRight js_hideTipOnMobile"
                   target="_self"
                   title="Рынок Ресурсов">
          	        <img class="mouseSwitch" 
          	             src="red_images/a3a00daf8e8344790bbfbd377d5794.gif" 
          	                                             height="29" width="38" 
                                       	             rel="red_images/52a1c5180074e85d8343de56abb232.gif"/>
          	    </a>
          	                </span>
            <a class="menubutton premiumHighligt"
               href="index.php?page=trader&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Скупщик</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                                    <a href="index.php?page=globalTechtree&session=<?=$session;?>&open=all"
                   class="overlay tooltipRight js_hideTipOnMobile"
                   target="_blank"
                   title="Технологии">
          	        <img class="mouseSwitch" 
          	             src="red_images/46d133829e8b9e025470dd1d4ec79d.gif" 
          	                                             height="29" width="38" 
                                       	             rel="red_images/56516a3999238b42f65654906004d1.gif"/>
          	    </a>
          	                </span>
            <a class="menubutton "
               href="index.php?page=research&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Исследования</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/8822e24278a0b4bdb0cb2b52cf7f4e.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton "
               href="index.php?page=shipyard&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Верфь</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/3a1b0e15ebce20dcea04da23eedbba.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton "
               href="index.php?page=defense&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Оборона</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                                    <a href="index.php?page=movement&session=<?=$session;?>"
                   class="tooltipRight js_hideTipOnMobile"
                   target="_self"
                   title="Передвижения флота">
          	        <img class="mouseSwitch" 
          	             src="red_images/17802a56c19935ccbc4ef329c0c867.gif" 
          	                                             height="29" width="38" 
                                       	             rel="red_images/fca390c937463b33442bcb7b255d1f.gif"/>
          	    </a>
          	                </span>
            <a class="menubutton "
               href="index.php?page=fleet1&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Флот</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/11b32cf746afcdd4bc896373186a3d.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton "
               href="index.php?page=galaxy&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Галактика</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/e95e882e8916c0be653cb7a57e9581.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton "
               href="index.php?page=alliance&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Альянс</span>
            </a>
    </li>

        <li>
        <span class="menu_icon">
                              	    <img src="red_images/e77402177b37bee59124d784aa81d5.gif" 
                                                     height="29" width="38" 
                          />
          	                </span>
            <a class="menubutton premiumHighligt officers"
               href="index.php?page=premium&session=<?=$session;?>"
               accesskey=""               target="_self"
                               >

                <span class="textlabel">Офицеры</span>
            </a>
    </li>

<? if ( $GlobalUser['admin'] > 0 ) { ?>
        <li>
        <span class="menu_icon">
                </span>
            <a class="menubutton "
               href="index.php?page=admin&session=<?=$session;?>"
               accesskey=""
               target="_blank">
                <span class="textlabel">Одминко</span>
            </a>
    </li>
<? } ?>

    </ul>

        
    <div class="adviceWrapper">
                <div id="advice-bar">
                
    	
    

<!-- КНОПКИ -->
    
</div>
    </div>
    <div id="toolLinksWrapper"><ul id="menuTableTools" class="leftmenu"></ul></div>
    <br class="clearfloat" />
</div>            <!-- END LEFTMENU -->
