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
<!--{if count($arrBestProducts) > 0}-->
<div class="panel panel-default">

 
     
        <div class="panel-heading"><h2><span class="square">■</span>おすすめ商品情報</h2></div>
<div class="panel-body">
       

        <!--{section name=cnt loop=$arrBestProducts step=4}-->
 <div class="row heightLineParent">
 <div class="col-sm-6 col-md-6 col-lg-3 col-xs-12">
           
                <div class="productImage">
                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[cnt].product_id|u}-->">
                        <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrBestProducts[cnt].main_image|sfNoImageMainList|h}-->&amp;width=800&amp;height=800" alt="<!--{$arrBestProducts[cnt].name|h}-->" /></a>
                </div>
                <div class="productContents">
                    <h3><small>
                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[cnt].product_id|u}-->"><!--{$arrBestProducts[cnt].name|h}--></a>
                    </h3></small>
                    <!--{assign var=price01 value=`$arrBestProducts[cnt].price01_min`}-->
                    <!--{assign var=price02 value=`$arrBestProducts[cnt].price02_min`}-->
                    <p class="sale_price"><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)：
                        <span class="price"><!--{$price02|sfCalcIncTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}--> 円</span>
                    </p>
                    <p class="mini comment"><!--{$arrBestProducts[cnt].comment|h|nl2br}--></p>
                </div>
            </div>
<div class="col-sm-6 col-md-6 col-lg-3 col-xs-12">
                <div class="productImage">
                    <!--{assign var=cnt2 value=`$smarty.section.cnt.iteration*$smarty.section.cnt.step-3`}-->
                    <!--{if $arrBestProducts[$cnt2]|count > 0}-->

                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[$cnt2].product_id|u}-->">
                   <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrBestProducts[$cnt2].main_image|sfNoImageMainList|h}-->&amp;width=800&amp;height=800" alt="<!--{$arrBestProducts[$cnt2].name|h}-->" /></a>
                </div>
                <div class="productContents">
                    <h3><small>
                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[$cnt2].product_id|u}-->"><!--{$arrBestProducts[$cnt2].name|h}--></a>
                    </h3></small>

                    <!--{assign var=price01 value=`$arrBestProducts[$cnt2].price01_min`}-->
                    <!--{assign var=price02 value=`$arrBestProducts[$cnt2].price02_min`}-->

                    <p class="sale_price"><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)：
                        <span class="price"><!--{$price02|sfCalcIncTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}--> 円</span>
                    </p>
                    <p class="mini comment"><!--{$arrBestProducts[$cnt2].comment|h|nl2br}--></p>
                    <!--{/if}-->
               </div>
            

        </div>   

<div class="col-sm-6 col-md-6 col-lg-3 col-xs-12">
                <div class="productImage">
                    <!--{assign var=cnt3 value=`$smarty.section.cnt.iteration*$smarty.section.cnt.step-2`}-->
                    <!--{if $arrBestProducts[$cnt3]|count > 0}-->

                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[$cnt3].product_id|u}-->">
                   <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrBestProducts[$cnt3].main_image|sfNoImageMainList|h}-->&amp;width=800&amp;height=800" alt="<!--{$arrBestProducts[$cnt3].name|h}-->" /></a>
                </div>
                <div class="productContents">
                    <h3><small>
                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[$cnt3].product_id|u}-->"><!--{$arrBestProducts[$cnt3].name|h}--></a>
                    </h3></small>

                    <!--{assign var=price01 value=`$arrBestProducts[$cnt3].price01_min`}-->
                    <!--{assign var=price02 value=`$arrBestProducts[$cnt3].price02_min`}-->

                    <p class="sale_price"><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)：
                        <span class="price"><!--{$price02|sfCalcIncTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}--> 円</span>
                    </p>
                    <p class="mini comment"><!--{$arrBestProducts[$cnt3].comment|h|nl2br}--></p>
                    <!--{/if}-->
               </div>
            

        </div>

            <div class="col-sm-6 col-md-6 col-lg-3 col-xs-12">
                <div class="productImage">
                    <!--{assign var=cnt4 value=`$smarty.section.cnt.iteration*$smarty.section.cnt.step-1`}-->
                    <!--{if $arrBestProducts[$cnt4]|count > 0}-->

                    <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[$cnt4].product_id|u}-->">
                   <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrBestProducts[$cnt4].main_image|sfNoImageMainList|h}-->&amp;width=800&amp;height=800" alt="<!--{$arrBestProducts[$cnt4].name|h}-->" /></a>
                </div>
                <div class="productContents">
                    <h3><small>
                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrBestProducts[$cnt4].product_id|u}-->"><!--{$arrBestProducts[$cnt4].name|h}--></a>
                    </h3></small>

                    <!--{assign var=price01 value=`$arrBestProducts[$cnt4].price01_min`}-->
                    <!--{assign var=price02 value=`$arrBestProducts[$cnt4].price02_min`}-->

                    <p class="sale_price"><!--{$smarty.const.SALE_PRICE_TITLE}-->(税込)：
                        <span class="price"><!--{$price02|sfCalcIncTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}--> 円</span>
                    </p>
                    <p class="mini comment"><!--{$arrBestProducts[$cnt4].comment|h|nl2br}--></p>
                    <!--{/if}-->
               </div>
            

        </div>   </div>
        <!--{/section}-->
</div>
</div>
<!--{/if}-->
