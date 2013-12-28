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
    <div id="undercolumn_error">
        <div class="message_area">
            <!--★エラーメッセージ-->
            <p class="error"><!--{$tpl_error}--></p>
        </div>

        <div class="btn_area">
            <ul>
                <li>
                    <!--{if $return_top}-->
                        <a href="<!--{$smarty.const.TOP_URLPATH}-->" name="b_toppage" class="btn btn-default" class="btn btn-default" />トップページへ</a>
                    <!--{else}-->
                        <a href="javascript:history.back()" name="b_back" id="b_back" class="btn btn-default" />戻る</a>
                    <!--{/if}-->
                </li>
            </ul>
        </div>
    </div>
</div>
<!--▲CONTENTS-->
