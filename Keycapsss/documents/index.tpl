{extends file="parent:documents/index.tpl"}

{block name="document_index_address"}

    {block name="document_index_address_sender"}
        <p class="sender">{$Containers.Header_Sender.value}</p>
    {/block}
    {block name="document_index_address_base"}
        {if $User.$address.company}{$User.$address.company}<br />{/if}
        {if $User.$address.department}{$User.$address.department}<br />{/if}
        {if {config name="displayprofiletitle"}}
            {$User.$address.title}<br/>
        {/if}
        {$User.$address.firstname} {$User.$address.lastname}<br />
        {$User.$address.street}<br />
    {/block}
    {block name="document_index_address_additionalAddressLines"}
        {if $User.$address.additional_address_line1}
            {$User.$address.additional_address_line1}<br />
        {/if}
        {if $User.$address.additional_address_line2}
            {$User.$address.additional_address_line2}<br />
        {/if}
    {/block}
    {block name="document_index_address_cityZip"}
        {if {config name="showZipBeforeCity"}}
            {$User.$address.zipcode} {$User.$address.city}<br />
        {else}
            {$User.$address.city} {$User.$address.zipcode}<br />
        {/if}
    {/block}
    {block name="document_index_address_countryData"}
        {if $User.$address.state.shortcode}{$User.$address.state.shortcode} - {/if}{$User.$address.country.countryen}<br />
    {/block}

	{if $Document.template == "index.tpl"}
		{if $User.shipping.street != $User.billing.street || $User.shipping.streetnumber != $User.billing.streetnumber || $User.shipping.zipcode != $User.billing.zipcode}
			<br />
			Shipping address:<br />
			{if $User.shipping.company}{$User.shipping.company}<br />{/if}
			{$User.shipping.firstname} {$User.shipping.lastname}<br />
			{if $User.shipping.additional_address_line1}{$User.shipping.additional_address_line1}<br />{/if}
			{$User.shipping.street} {$User.shipping.streetnumber}<br />
			{$User.shipping.zipcode} {$User.shipping.city}<br />
			{if $User.shipping.state.shortcode}{$User.shipping.state.shortcode} - {/if}{$User.shipping.country.countryen}
		
		{/if}
	{/if}
{/block}

{block name="document_index_info_dispatch"}
  {$smarty.block.parent}
  {if $Order._order.trackingcode}Tracking number: {$Order._order.trackingcode}{/if}
{/block}

