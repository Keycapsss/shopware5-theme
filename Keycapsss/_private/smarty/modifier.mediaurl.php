<?php

function smarty_modifier_mediaurl($media){
    $media = Shopware()->Models()->getRepository('Shopware\Models\Media\Media')->findOneBy(['id' => $media]);
        if ($media) {
            $path = $media->getPath();

            $mediaUrl = Shopware()->Container()->get('shopware_media.media_service')->getUrl($path);

            return $mediaUrl;
        }
        return null;
    }
?>