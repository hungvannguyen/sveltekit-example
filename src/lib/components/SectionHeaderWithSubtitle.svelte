<script>
	export let subtitle = '';
	export let title = '';
	export let className = '';
	export let headerClass = 'my-12 mb-6 text-center';
	export let subtitleClass =
		'text-md from-violet-70 to-pink-650 my-4 inline-block bg-gradient-to-r bg-clip-text font-semibold tracking-wide text-transparent';
	export let titleClass = 'text-4xl leading-[1.2]';
</script>

<header class="{headerClass} {className}">
	{#if subtitle}
		<p class={subtitleClass}>
			{subtitle}
		</p>
	{/if}

	<h2 class={titleClass}>
		{title}
	</h2>
</header>
