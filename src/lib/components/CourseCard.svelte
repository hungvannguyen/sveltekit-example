<script>
	/** @type {string} */
	export let href = '';

	/** @type {string} */
	export let imageSrc = '';

	/** @type {string} */
	export let imageAlt = '';

	/** @type {string} */
	export let title = '';

	/** @type {string} */
	export let description = '';

	/** @type {string} */
	export let className = '';
</script>

<a
	class="relative max-w-[350px] overflow-hidden rounded-lg border border-slate-800 transition-colors duration-200 ease-in-out hover:dark:border-[#484354] {className}"
	{href}
>
	<div class="relative h-64 w-full overflow-hidden">
		<img
			src={imageSrc}
			alt={imageAlt}
			class="h-auto w-full object-cover transition-transform duration-300 group-hover:scale-110"
			sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
			loading="lazy"
			decoding="async"
			style="object-fit: cover; width: 100%; height: 100%;"
		/>
	</div>
	<div class="p-6">
		<h3 class="font-heading group-hover:text-accent text-xl transition-colors duration-300">
			{title}
		</h3>
		<p class="text-foreground mt-2 text-sm">
			{description}
		</p>
	</div>
</a>
