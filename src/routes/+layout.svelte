<script lang="ts">
	import '../app.css';
	import '../lib/styles/fonts.css';
	import '../lib/styles/global.css';
	import Header from '$lib/components/Header.svelte';
	import Footer from '$lib/components/Footer.svelte';
	import SvgSprites from '$lib/components/SvgSprites.svelte';
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();
</script>

<SvgSprites />

<Header />

<svelte:head>
	<link rel="icon" href={favicon} />
	<link
		rel="preload"
		href="/fonts/Inter-VariableFont_opsz,wght.ttf"
		as="font"
		type="font/ttf"
		crossorigin="anonymous"
	/>
	<link
		rel="preload"
		href="/fonts/Inter-Italic-VariableFont_opsz,wght.ttf"
		as="font"
		type="font/ttf"
		crossorigin="anonymous"
	/>
</svelte:head>

<main class="flex flex-1 flex-col">
	{@render children?.()}
</main>

<Footer />
