{extends file="parent:frontend/listing/product-box/product-badges.tpl"}

{block name="frontend_listing_box_article_badges_inner"}        
    {$smarty.block.parent}
    {* Backorder *}
    {block name='frontend_listing_box_article_backorder'}
        {if $sArticle.attr19 == true}
            <div class="product--badge badge--discount">
                {s name="ListingBoxBackorder"}{/s}
            </div>
        {/if}
    {/block}
    {* Sold Out product badge *}
    {block name='frontend_listing_box_article_sold_out'}
        {if $sArticle.instock <= 0 && $sArticle.attr19 == false}
            <div class="product--badge badge--discount">
                {s name="ListingBoxSoldOut"}{/s}
            </div>
        {/if}
    {/block}
    {* Almost sold out *}
    {block name='frontend_listing_box_article_almost_sold_out'}
        {if $sArticle.instock > 0 and $sArticle.instock <= 5}
            <div class="product--badge badge--newcomer">
                {s name="ListingBoxAlmostSoldOut"}{/s}
            </div>
        {/if}
    {/block}
{/block}