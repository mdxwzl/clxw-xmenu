<template>
    <svg class="close" width="142" height="151" viewBox="0 0 142 151" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M71 27L110.404 49.75V95.25L71 118L31.5958 95.25V49.75L71 27Z" style="fill: var(--close-primary)"
            fill-opacity="0.2" />
        <g opacity="0.75" filter="url(#filter0_di_0_1)">
            <path d="M71 37L102.177 54.75V90.25L71 108L39.8231 90.25V54.75L71 37Z" style="fill: var(--close-primary)"
                fill-opacity="0.2" />
        </g>
        <g filter="url(#filter1_d_0_1)">
            <path d="M77.3984 66.1016L71 72.5M64.6016 78.8984L71 72.5M71 72.5L64.6016 66.1016L77.3984 78.8984"
                style="stroke: var(--close-stroke)" stroke-width="1.42188" />
        </g>
        <defs>
            <filter id="filter0_di_0_1" x="0" y="0" width="100%" height="100%" filterUnits="objectBoundingBox"
                color-interpolation-filters="sRGB">
                <feGaussianBlur in="SourceAlpha" stdDeviation="5" result="blur" />
                <feFlood flood-color="rgba(0, 0, 0, 0)" result="color" />
                <feComposite in2="color" in="blur" operator="in" result="maskedBlur" />
                <feComponentTransfer in="maskedBlur" result="brightnessAdjustedBlur">
                    <feFuncA type="linear" slope="1" />
                </feComponentTransfer>
                <feMerge>
                    <feMergeNode in="brightnessAdjustedBlur" />
                    <feMergeNode in="SourceGraphic" />
                </feMerge>
            </filter>

            <filter id="filter1_d_0_1" x="0" y="0" width="100%" height="100%" filterUnits="objectBoundingBox"
                color-interpolation-filters="sRGB">
                <feGaussianBlur in="SourceAlpha" stdDeviation="3" result="blur" />
                <feFlood flood-color="rgba(0, 0, 0, 0)" result="color" />
                <feComposite in2="color" in="blur" operator="in" result="maskedBlur" />
                <feComponentTransfer in="maskedBlur" result="brightnessAdjustedBlur">
                    <feFuncA type="linear" slope="1" />
                </feComponentTransfer>
                <feMerge>
                    <feMergeNode in="brightnessAdjustedBlur" />
                    <feMergeNode in="SourceGraphic" />
                </feMerge>
            </filter>
    </defs>
</svg></template>