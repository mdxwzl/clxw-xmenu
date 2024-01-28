<script setup lang="ts">
import { ref } from 'vue';
import { Icon } from '@iconify/vue';

const props = defineProps({
    icon: String,
    label: String,
    placeholder: Boolean,
})

const hover = ref(false);
</script>

<template>
    <div class="item" @mouseenter="hover = true" @mouseleave="hover = false" v-if="!props.placeholder" >
        <div class="overlay">
            <Icon :icon="props.icon || 'streamline:business-handshake-solid'" />
            <span v-if="(props.label != undefined) && hover">{{ props.label }}</span>
        </div>
        <svg class="background" fill="none" width="169" height="169" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 169 169">

            <path d="M84.5 0L157.679 42.25V126.75L84.5 169L11.3209 126.75V42.25L84.5 0Z" style="fill: var(--primary)" fill-opacity="0.2" />

            <g v-if="!hover">
                <path d="M84.5 11L148.153 47.75V121.25L84.5 158L20.8471 121.25V47.75L84.5 11Z" style="opacity: 0.2; fill: var(--secondary-fill);" />
            </g>
            <g v-else>
                <path d="M84.5 11L148.153 47.75V121.25L84.5 158L20.8471 121.25V47.75L84.5 11Z" fill="url(#paint0_radial_0_1)" fill-opacity="0.2" style="stroke: var(--primary-stroke)" />
            </g>
            
            <defs>
                <radialGradient id="paint0_radial_0_1" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse">
                    <stop style="stop-color: var(--primary-gradient-start)" />
                    <stop offset="1" style="stop-color: var(--primary-gradient-stop)" />
                </radialGradient>
                <radialGradient id="paint0_radial_0_2" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse">
                    <stop style="stop-color: var(--primary-gradient-start)" />
                    <stop offset="1" style="stop-color: var(--primary-gradient-stop)" />
                </radialGradient>
            </defs>
        </svg>
    </div>
    <div v-else class="placeholder"></div>
</template>