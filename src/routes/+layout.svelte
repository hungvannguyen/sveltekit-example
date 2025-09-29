<script lang="ts">
	import '../app.css';
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
</svelte:head>

{@render children?.()}
<Footer />
