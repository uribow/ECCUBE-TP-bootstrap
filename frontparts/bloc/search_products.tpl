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
    <div class="panel-heading"><h2><span class="glyphicon glyphicon-th-large"></span> 検索条件</h2></div>
  <div class="panel-body">
            <!--検索フォーム-->
            <form name="search_form" id="search_form" method="get" action="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <dl class="formlist">
                <dt>商品カテゴリから選ぶ</dt>
                <dd><input type="hidden" name="mode" value="search" />
                <select name="category_id" class="box145 form-control">
                    <option label="すべての商品" value="">全ての商品</option>
                    <!--{html_options options=$arrCatList selected=$category_id}-->
                </select>
                </dd>
            </dl>
            <dl class="formlist">
                <!--{if $arrMakerList}-->
                <dt>メーカーから選ぶ</dt>
                <dd><select name="maker_id" class="box145">
                    <option label="すべてのメーカー" value="">すべてのメーカー</option>
                    <!--{html_options options=$arrMakerList selected=$maker_id}-->
                </select>
                </dd>
            </dl>
            <dl class="formlist">
                <!--{/if}-->
                <dt>商品名を入力</dt>
                <dd><input type="text" name="name" class="box140 form-control" maxlength="50" value="<!--{$smarty.get.name|h}-->" /></dd>
            </dl>
            <button type="submit" class="btn btn-default">検索</button>
            </form>
        </div>
    
</div>
