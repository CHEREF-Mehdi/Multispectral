function imgNormlized=normalize(img)
    mini=min(min(min(img)));
    maxi=max(max(max(img)));
    imgNormlized=255*((img-mini)/(maxi-mini));
    imgNormlized=uint8(imgNormlized);
end