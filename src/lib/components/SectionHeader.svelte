<script>
	export let title = '';
	export let className = '';
	export let headerClass = 'p-5 text-center lg:mb-6';
	export let titleClass =
		'text-5xl leading-[1.12] font-bold text-white md:font-extrabold lg:text-[3.9rem] lg:leading-[1.15]';
</script>

<header class="{headerClass} {className}">
	<h1 class={titleClass}>
		{title}
	</h1>
</header>
