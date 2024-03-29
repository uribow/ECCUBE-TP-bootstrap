<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2011 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<!--▼CONTENTS-->
<div id="mypagecolumn">
    <h2 class="title"><!--{$tpl_title|h}--></h2>
    <!--{include file=$tpl_navi}-->
    <div id="mycontents_area">
        <h3><!--{$tpl_subtitle|h}--></h3>
        <p class="inforamtion">登録住所以外への住所へ送付される場合等にご利用いただくことができます。<br />
        ※最大<span class="attention"><!--{$smarty.const.DELIV_ADDR_MAX|h}-->件</span>まで登録できます。</p>

        <!--{if $tpl_linemax < $smarty.const.DELIV_ADDR_MAX}-->
            <!--{* 退会時非表示 *}-->
            <!--{if $tpl_login}-->
                <p class="add_address">
                    
                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" target="_blank" name="newadress" class="btn btn-default" onclick="win03('./delivery_addr.php','delivadd','600','640'); return false;">新しいお届け先を追加</a>
                </p>
            <!--{/if}-->
        <!--{/if}-->

        <!--{if $tpl_linemax > 0}-->
        <form name="form1" method="post" action="?" >
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="" />
            <input type="hidden" name="other_deliv_id" value="" />
            <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->" />

            <table summary="お届け先" class="table">
            <colgroup width="5%"></colgroup>
            <colgroup width="25%"></colgroup>
            <colgroup width="50%"></colgroup>
            <colgroup width="10%"></colgroup>
            <colgroup width="10%"></colgroup>
                <tr>
                    <th colspan="5">お届け先</th>
                </tr>
                <!--{section name=cnt loop=$arrOtherDeliv}-->
                    <!--{assign var=OtherPref value="`$arrOtherDeliv[cnt].pref`"}-->
                    <tr>
                        <td class="alignC"><!--{$smarty.section.cnt.iteration}--></td>
                        <td><label for="add<!--{$smarty.section.cnt.iteration}-->">お届け先住所</label></td>
                        <td>
                            〒<!--{$arrOtherDeliv[cnt].zip01}-->-<!--{$arrOtherDeliv[cnt].zip02}--><br />
                            <!--{$arrPref[$OtherPref]|h}--><!--{$arrOtherDeliv[cnt].addr01|h}--><!--{$arrOtherDeliv[cnt].addr02|h}--><br />
                            <!--{$arrOtherDeliv[cnt].name01|h}-->&nbsp;<!--{$arrOtherDeliv[cnt].name02|h}-->
                        </td>
                        <td class="alignC">
                            <a href="./delivery_addr.php" onclick="win02('./delivery_addr.php?other_deliv_id=<!--{$arrOtherDeliv[cnt].other_deliv_id}-->','deliv_disp','600','640'); return false;">変更</a>
                        </td>
                        <td class="alignC">
                            <a href="#" onclick="fnModeSubmit('delete','other_deliv_id','<!--{$arrOtherDeliv[cnt].other_deliv_id}-->'); return false;">削除</a>
                        </td>
                    </tr>
                <!--{/section}-->
            </table>
        </form>
        <!--{else}-->
        <p class="delivempty"><strong>新しいお届け先はありません。</strong></p>
        <!--{/if}-->
    </div>
</div>
<!--▲CONTENTS-->
