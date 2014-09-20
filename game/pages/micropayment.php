<?php

// Заказ офицеров.

$MicropaymentMessage = "";
$MicropaymentError = "";

loca_add ( "menu", $GlobalUser['lang'] );
loca_add ( "premium", $GlobalUser['lang'] );

if ( key_exists ('cp', $_GET)) SelectPlanet ($GlobalUser['player_id'], intval($_GET['cp']));
$GlobalUser['aktplanet'] = GetSelectedPlanet ($GlobalUser['player_id']);
$now = time();
UpdateQueue ( $now );
$aktplanet = GetPlanet ( $GlobalUser['aktplanet'] );
$aktplanet = ProdResources ( $aktplanet, $aktplanet['lastpeek'], $now );
UpdatePlanetActivity ( $aktplanet['planet_id'] );
UpdateLastClick ( $GlobalUser['player_id'] );
$session = $_GET['session'];

// Стоимость офицеров.
$price = array ( 1 => 10000, 2 => 10000, 3 => 10000, 4 => 10000, 5 => 10000 );

function OfficerLeft ( $qcmd )
{
    global $GlobalUser;
    $now = time ();
    $end = GetOfficerLeft ( $GlobalUser['player_id'], $qcmd );
    if ( $end <= $now ) return loca("PREM_INACTIVE");
    else
    {
        $d = ceil ( ($end - $now) / (60*60*24) );
        return va(loca("PREM_ACTIVE"), $d);
    }
}

// Обработать GET-запрос.
if ( key_exists ( 'buynow', $_GET ) )
{
    $qcmd = array ( 1 => "CommanderOff", 2 => "AdmiralOff", 3 => "EngineerOff", 4 => "GeologeOff", 5 => "TechnocrateOff" );
    $type = intval ( $_GET['type'] );
    $days = intval ( $_GET['days'] );
    if ( $days == 7 || $days == 90 )
    {
        $dm = $GlobalUser['dm'] + $GlobalUser['dmfree'];
        if ( $days == 7) $required = $price[$type];
        else if ( $days == 90) $required = $price[$type] * 10;
        if ( $dm < $required )
        {
            $MicropaymentError = loca ("PREM_NOTENOUGH") . "<br>";
        }
        else
        {
            if ( $type >= 1 && $type <= 5 )
            {
                // Списать ТМ.
                if ( $GlobalUser['dm'] >= $required ) $GlobalUser['dm'] -= $required;
                else {
                    $GlobalUser['dmfree'] -= $required - $GlobalUser['dm'];
                    $GlobalUser['dm'] = 0;
                }

                $query = "UPDATE ".$db_prefix."users SET dm = '".$GlobalUser['dm']."', dmfree = '".$GlobalUser['dmfree']."' WHERE player_id = " . $GlobalUser['player_id'];
                dbquery ( $query );

                RecruitOfficer ( $GlobalUser['player_id'], $qcmd[$type], $days * 24 * 60 * 60 );
                
                $MicropaymentMessage = loca ("PREM_OK") . "<br>";
            }
        }
    }
}

PageHeader ("micropayment");

echo "<!-- CONTENT AREA -->\n";
echo "<div id='content'>\n";
echo "<center>\n";

// ************************************************************************************
?>

<center>

          <div id="header" style="background-image:url('img/kasino_600x120.jpg'); width:600px;height:120px;">
            <div id="headtext1" style="position:relative; top:25px; left:-160px;font-size:18px;font-weight:bold; color:f3d2b1;"><?=loca("PREM_HEAD1");?></div>
            <div id="headtext2" style="position:relative;float:right;top:23px;left:-240px;font-size:13px;font-weight:bold;color:#c2f1fd;"><?=loca("PREM_HEAD2");?></div>
         </div>

                <table width=600>

                <tr>
                      <td colspan="3" class="c"><?=loca("DM");?></td>

                </tr>
                <tr>
                    <td class=l><img border='0' src="img/DMaterie.jpg" align='top' width='120' height='120'>
                    </td>
                    <td class=l><strong><?=loca("DM");?></strong><br>
                            <?=loca("PREM_DM_INFO");?>                         <div style="margin:4px 4px;">
                            <table><tr><td><img src="img/dm_klein_1.jpg" width="32" height="32" style="vertical-align:middle;"></td>
                            <td style='background-color:transparent;'><strong style="color:skyblue; vertical-align:middle;"><?=loca("PREM_DM_NOTE");?></strong></td></tr></table>

                            </div></td>
                        <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                                                <a id='darkmatter2' href='index.php?page=payment&session=<?=$session;?>' style='cursor:pointer; text-align:center;width:100px;height:60px;'><br>
                            <b><div id='darkmatter2'><?=loca("PREM_DM_GET");?></a></b>
                        </DIV></td>
                    </tr>


                    <tr>

                      <td colspan="3" class="c"><?=loca("PREM_OFICEERS");?></td>
                    </tr>
                    <tr>

                                                <td class=l rowspan="2"><img border='0' src="img/commander_stern_gross.jpg" align='top' width='120' height='120'></td>

                        <td class=l rowspan="2"><b><?=loca("PREM_COMMANDER");?></b>(<b>
                        <?=OfficerLeft("CommanderOff");?></b>)<br>
                            <?=loca("PREM_COMMANDER_INFO");?>                         <div style="margin:4px 4px;">
                            <table>
                                <tr>
                                <td><img src="img/commander_ikon.gif" width="32" height="32" style="vertical-align:middle;" alt="<?=loca("PREM_COMMANDER");?>">
                                </td>
                                <td style='background-color:transparent;'><strong style="color:skyblue; vertical-align:middle;"><?=loca("PREM_COMMANDER_NOTE");?></strong>
                                </td>

                                </tr>
                            </table>
                            </div>
                        </td>
                                                    <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                                <a href='index.php?page=micropayment&buynow=1&type=1&days=90&session=<?=$session;?>' >
                                <b><?=loca("PREM_3MONTH");?>                              <br><font color=lime><?=loca("PREM_TOTAL");?> <?=nicenum($price[1]*10);?></font>
                                <br><?=loca("DM");?></b></a>

                            </td>
                            </tr>
                        <tr>
                            <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                                <a href='index.php?page=micropayment&buynow=1&type=1&days=7&session=<?=$session;?>' >
                                <b><?=loca("PREM_WEEK");?>                              <br><font color=lime><?=nicenum($price[1]);?></font>
                                <br><?=loca("DM");?></b></a>

                            </td>
                        </tr>
                        



                    <tr>
                      <td colspan="3" class="c" style='height:4px;'></td>
                    </tr>



                    <tr>
                                                <td class=l rowspan="2"><img border='0' src="img/ogame_admiral.jpg" align='top' width='120' height='120'></td>

                        <td class=l rowspan="2"><b><?=loca("PREM_ADMIRAL");?></b>(<b>
                        <?=OfficerLeft("AdmiralOff");?>)<br>
                            <?=loca("PREM_ADMIRAL_INFO");?><br>
                            <div style="margin:4px 4px;">
                            <table><tr><td><img src="img/admiral_ikon.gif" width="32" height="32" style="vertical-align:middle;" alt="<?=loca("PREM_ADMIRAL");?>"></td>
                            <td style='background-color:transparent;'><strong style="color:skyblue; vertical-align:middle;"><?=loca("PREM_ADMIRAL_NOTE");?></strong></td></tr></table>

                            </div>
                                                <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=2&days=90&session=<?=$session;?>' >
                            <b><?=loca("PREM_3MONTH");?>                          <br><font color=lime><?=loca("PREM_TOTAL");?> <?=nicenum($price[2]*10);?></font>
                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>

                    <tr>
                        <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=2&days=7&session=<?=$session;?>' >
                            <b><?=loca("PREM_WEEK");?>                          <br><font color=lime><?=nicenum($price[2]);?></font>
                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>

                    
                    <tr>
                      <td colspan="3" class="c" style='height:4px;'></td>
                    </tr>

                    <tr>
                                                <td class=l rowspan="2"><img border='0' src="img/ogame_ingenieur.jpg" align='top' width='120' height='120'></td>

                        <td class=l rowspan="2"><b><?=loca("PREM_ENGINEER");?></b>(<b>
                        <?=OfficerLeft("EngineerOff");?></b>)<br>
                            <?=loca("PREM_ENGINEER_INFO");?><br>
                            <div style="margin:4px 4px;">
                            <table><tr><td><img src="img/ingenieur_ikon.gif" width="32" height="32" style="vertical-align:middle;" alt="<?=loca("PREM_ENGINEER");?>"></td>
                            <td style='background-color:transparent;'><strong style="color:skyblue; vertical-align:middle;"><?=loca("PREM_ENGINEER_NOTE");?></strong></td></tr></table>
                            </div>
                                                <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=3&days=90&session=<?=$session;?>' >
                            <b><?=loca("PREM_3MONTH");?>                          <br><font color=lime><?=loca("PREM_TOTAL");?> <?=nicenum($price[3]*10);?></font>

                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>
                    <tr>
                        <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=3&days=7&session=<?=$session;?>' >
                            <b><?=loca("PREM_WEEK");?>                          <br><font color=lime><?=nicenum($price[3]);?></font>

                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>
                        
                    <tr>
                      <td colspan="3" class="c" style='height:4px;'></td>
                    </tr>

                    <tr>
                                                <td class=l rowspan="2"><img border='0' src="img/ogame_geologe.jpg" align='top' width='120' height='120'></td>

                        <td class=l rowspan="2"><b><?=loca("PREM_GEOLOGE");?></b>(<b>
                        <?=OfficerLeft("GeologeOff");?></b>)<br>
                            <?=loca("PREM_GEOLOGE_INFO");?><br>
                            <div style="margin:4px 4px;">
                            <table><tr><td><img src="img/geologe_ikon.gif" width="32" height="32" style="vertical-align:middle;" alt="<?=loca("PREM_GEOLOGE");?>"></td>
                            <td style='background-color:transparent;'><strong style="color:skyblue; vertical-align:middle;"><?=loca("PREM_GEOLOGE_NOTE");?></strong></td></tr></table>

                            </div>
                                                <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=4&days=90&session=<?=$session;?>' >
                            <b><?=loca("PREM_3MONTH");?>                          <br><font color=lime><?=loca("PREM_TOTAL");?> <?=nicenum($price[4]*10);?></font>
                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>

                    <tr>
                        <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=4&days=7&session=<?=$session;?>' >
                            <b><?=loca("PREM_WEEK");?>                          <br><font color=lime><?=nicenum($price[4]);?></font>
                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>

                        

                    <tr>
                      <td colspan="3" class="c" style='height:4px;'></td>
                    </tr>

                    <tr>
                                                <td class=l rowspan="2"><img border='0' src="img/ogame_technokrat.jpg" align='top' width='120' height='120'></td>

                        <td class=l rowspan="2"><b><?=loca("PREM_TECHNOCRATE");?></b>(<b>
                        <?=OfficerLeft("TechnocrateOff");?></b>)<br>
                            <?=loca("PREM_TECHNOCRATE_INFO");?><br>
                            <div style="margin:4px 4px;">
                            <table><tr><td><img src="img/technokrat_ikon.gif" width="32" height="32" style="vertical-align:middle;" alt="<?=loca("PREM_TECHNOCRATE");?>"></td>
                            <td style='background-color:transparent;'><strong style="color:skyblue; vertical-align:middle;"><?=loca("PREM_TECHNOCRATE_NOTE");?></strong></td></tr></table>
                            </div>
                                            <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=5&days=90&session=<?=$session;?>' >
                            <b><?=loca("PREM_3MONTH");?>                          <br><font color=lime><?=loca("PREM_TOTAL");?> <?=nicenum($price[5]*10);?></font>

                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>

                    <tr>
                        <td class=l style="width:90px;text-align:center; vertical-align:middle;">
                            <a href='index.php?page=micropayment&buynow=1&type=5&days=7&session=<?=$session;?>' >
                            <b><?=loca("PREM_WEEK");?>                          <br><font color=lime><?=nicenum($price[5]);?></font>

                            <br><?=loca("DM");?></b></a>
                        </td>
                    </tr>
                        

          </table>
          <br>

<?php

// ************************************************************************************

echo "<br><br><br><br>\n";
echo "</center>\n";
echo "</div>\n";
echo "<!-- END CONTENT AREA -->\n";

PageFooter ($MicropaymentMessage, $MicropaymentError);
ob_end_flush ();
?>