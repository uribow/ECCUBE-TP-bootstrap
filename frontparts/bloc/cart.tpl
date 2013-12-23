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
    
    <div class="panel-heading"><h2 class="cart"><span class="title"><span class="square">■</span>現在のカゴの中</span></h2></div>
  <div class="panel-body">
            <div class="information">
                <p class="item">合計数量：<span class="attention"><!--{$arrCartList.0.TotalQuantity|number_format|default:0}--></span></p>
                <p class="total">商品金額：<span class="price"><!--{$arrCartList.0.ProductsTotal|number_format|default:0}-->円</span></p>
                <!--{*************************************
                     * カゴの中に商品がある場合にのみ表示
                     * 複数の商品種別が存在する場合は非表示
                     *************************************}-->
                <!--{if $arrCartList.0.TotalQuantity > 0 and $arrCartList.0.free_rule > 0 and !$isMultiple and !$hasDownload}-->
                <p class="postage">
                    <!--{if $arrCartList.0.deliv_free > 0}-->
                        <span class="point_announce">送料手数料無料まで</span>あと<span class="price"><!--{$arrCartList.0.deliv_free|number_format|default:0}-->円（税込）</span>です。
                    <!--{else}-->
                        現在、送料は「<span class="price">無料</span>」です。
                    <!--{/if}-->
                </p>
                <!--{/if}-->
            </div>
                <a href="<!--{$smarty.const.CART_URLPATH}-->" class="btn btn-default">カゴの中を見る</a>
        </div>
    
</div>
