<!--{*
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
 *}-->
<!--▼CONTENTS-->
<div id="undercolumn">
    <div id="undercolumn_shopping">
        <p class="flow_area">
            <img src="<!--{$TPL_URLPATH}-->img/picture/img_flow_01.jpg" alt="購入手続きの流れ" />
        </p>
        <h2 class="title"><!--{$tpl_title|h}--></h2>

        <div id="address_area" class="clearfix">
            <div class="information">
                <p>下記一覧よりお届け先住所を選択して、「選択したお届け先に送る」ボタンをクリックしてください。</p>
                <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
                    <p>一覧にご希望の住所が無い場合は、「新しいお届け先を追加する」より追加登録してください。</p>
                <!--{/if}-->
                <p class="mini attention">※最大<!--{$smarty.const.DELIV_ADDR_MAX|h}-->件まで登録できます。</p>
            </div>
            <div class="add_multiple">
                <p>この商品を複数の<br />お届け先に送りますか？</p>
                <a href="javascript:;" onclick="fnModeSubmit('multiple', '', ''); return false"  name="several" id="several" class="btn btn-default" />お届け先を複数指定する</a>
            </div>
        </div>

        <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
            <p class="addbtn">
                <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.PHP_SELF|h}-->','new_deiv','600','640'); return false;" name="addition" id="addition" class="btn btn-default" />新しいお届け先を追加する</a>
            </p>
        <!--{/if}-->

        <form name="form1" id="form1" method="post" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="customer_addr" />
        <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
        <input type="hidden" name="other_deliv_id" value="" />
        <!--{if $arrErr.deli != ""}-->
            <p class="attention"><!--{$arrErr.deli}--></p>
        <!--{/if}-->
        <table summary="お届け先の指定" class="table">
            <colgroup width="10%"></colgroup>
            <colgroup width="20%"></colgroup>
            <colgroup width="50%"></colgroup>
            <colgroup width="10%"></colgroup>
            <colgroup width="10%"></colgroup>
            <tr>
                <th class="alignC">選択</th>
                <th class="alignC">住所種類</th>
                <th class="alignC">お届け先</th>
                <th class="alignC">変更</th>
                <th class="alignC">削除</th>
            </tr>
            <!--{section name=cnt loop=$arrAddr}-->
                <tr>
                    <td class="alignC">
                        <!--{if $smarty.section.cnt.first}-->
                            <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="-1" <!--{if $arrForm.deliv_check.value == "" || $arrForm.deliv_check.value == -1}--> checked="checked"<!--{/if}--> />
                        <!--{else}-->
                            <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="<!--{$arrAddr[cnt].other_deliv_id}-->"<!--{if $arrForm.deliv_check.value == $arrAddr[cnt].other_deliv_id}--> checked="checked"<!--{/if}--> />
                        <!--{/if}-->
                    </td>
                    <td class="alignC">
                        <label for="chk_id_<!--{$smarty.section.cnt.iteration}-->">
                            <!--{if $smarty.section.cnt.first}-->
                                会員登録住所
                            <!--{else}-->
                                追加登録住所
                            <!--{/if}-->
                        </label>
                    </td>
                    <td>
                        <!--{assign var=key value=$arrAddr[cnt].pref}-->
                        <!--{$arrPref[$key]}--><!--{$arrAddr[cnt].addr01|h}--><!--{$arrAddr[cnt].addr02|h}--><br />
                        <!--{$arrAddr[cnt].name01|h}--> <!--{$arrAddr[cnt].name02|h}-->
                    </td>
                    <td class="alignC">
                        <!--{if !$smarty.section.cnt.first}-->
                            <a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.ROOT_URLPATH}-->mypage/delivery_addr.php?page=<!--{$smarty.server.PHP_SELF|h}-->&amp;other_deliv_id=<!--{$arrAddr[cnt].other_deliv_id}-->','new_deiv','600','640'); return false;">変更</a>
                            <!--{else}-->
                                -
                            <!--{/if}-->
                    </td>
                    <td class="alignC">
                        <!--{if !$smarty.section.cnt.first}-->
                            <a href="?" onclick="fnModeSubmit('delete', 'other_deliv_id', '<!--{$arrAddr[cnt].other_deliv_id}-->'); return false">削除</a>
                            <!--{else}-->
                                -
                            <!--{/if}-->
                    </td>
                </tr>
            <!--{/section}-->
        </table>

        <div class="btn_area">
            <ul>
                <li>
                    <a href="<!--{$smarty.const.CART_URLPATH}-->" name="back03" id="back03" class="btn btn-default" />戻る</a>
                </li>
                <li>
                
                <button type="submit" class="btn btn-default" name="send_button" id="send_button">選択したお届け先に送る</button>
                </li>
            </ul>
        </div>

        </form>
    </div>
</div>
<!--▲CONTENTS-->
