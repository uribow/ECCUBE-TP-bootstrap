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
<div class="panel panel-default">
    
        <div class="panel-heading"><h2><span class="glyphicon glyphicon-th-large"></span> ログイン</h2></div>
  <div class="panel-body">
        <form name="login_form" id="login_form" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return fnCheckLogin('login_form')">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="login" />
            <input type="hidden" name="url" value="<!--{$smarty.server.PHP_SELF|h}-->" />
            <div class="bloc_body">
                <!--{if $tpl_login}-->
                    <p>ようこそ<br />
                        <span class="user_name"><!--{$tpl_name1|h}--> <!--{$tpl_name2|h}--> 様</span><br />
                        <!--{if $smarty.const.USE_POINT !== false}-->
                            所持ポイント：<span class="point"> <!--{$tpl_user_point|number_format|default:0}--> pt</span>
                        <!--{/if}-->
                    </p>
                    <!--{if !$tpl_disable_logout}-->
                        <p class="btn">
                            
                            <button type="submit" class="btn btn-default" onclick="fnFormModeSubmit('login_form', 'logout', '', ''); return false;">ログアウト</button>
                        </p>
                    <!--{/if}-->
                <!--{else}-->
                    <dl class="formlist">
                        <dt>メールアドレス</dt>
                        <dd>
                            <input type="text" name="login_email" class="box140 form-control"" value="<!--{$tpl_login_email|h}-->" style="ime-mode: disabled;" />
                        </dd>
                        <dd class="mini">
                            <input type="checkbox" name="login_memory" id="login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> />
                            <label for="login_memory"><span>コンピューターに記憶する</span></label>
                        </dd>
                    </dl>
                    <dl class="formlist">
                        <dt class="password">パスワード</dt>
                        <dd><input type="password" name="login_pass" class="box140 form-control"" /></dd>
                        <dd class="mini">
                        <a href="<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->" onclick="win01('<!--{$smarty.const.HTTPS_URL|sfTrimURL}-->/forgot/<!--{$smarty.const.DIR_INDEX_PATH}-->','forget','600','400'); return false;" target="_blank">パスワードを忘れた方はこちら</a>
                        </dd>
                    </dl>
                    <button type="submit" class="btn btn-default">ログイン</button>
                <!--{/if}-->
            </div>
        </form>
   </div>
</div>
