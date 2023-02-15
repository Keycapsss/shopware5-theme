{extends file="parent:frontend/listing/product-box/product-badges.tpl"}

{block name="frontend_listing_box_article_badges_inner"}        
    {$smarty.block.parent}
    {* Sold Out product badge *}
    {block name='frontend_listing_box_article_sold_out'}
        {if $sArticle.instock <= 0}
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