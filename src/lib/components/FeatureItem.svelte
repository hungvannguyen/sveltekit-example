<script>
	export let icon = '';
	export let subtitle = '';
	export let title = '';
	export let description = '';
	export let image = '';
	export let imageAlt = '';
	export let imagePosition = 'right'; // 'left' or 'right'
	export let className = '';
</script>

<div class="my-10 grid grid-cols-1 gap-8 md:grid-cols-2 {className}">
	<div
		class="md:mx-4 {imagePosition === 'left' ? 'md:order-last' : ''}"
		style="opacity: 1; transform: none;"
	>
		<div class="my-3 grid h-12 w-12 place-items-center rounded-full bg-violet-50 dark:bg-blue-800">
			<div class="dark:text-violet-75 text-violet-500">
				{@html icon}
			</div>
		</div>

		<p
			class="text-md from-violet-70 to-pink-650 mb-3 inline-block bg-gradient-to-r bg-clip-text font-semibold text-transparent"
		>
			{subtitle}
		</p>

		<h2 class="mb-4 text-3xl font-semibold lg:mb-8">{title}</h2>

		<p class="text-lg leading-7 lg:text-2xl lg:leading-9">
			{description}
		</p>
	</div>

	<div
		class="flex justify-center {imagePosition === 'left' ? 'md:order-first' : ''}"
		style="opacity: 1; transform: none;"
	>
		<img
			alt={imageAlt}
			loading="lazy"
			width="906"
			height="701"
			decoding="async"
			data-nimg="1"
			class="w-5/6 md:w-full md:pt-20 xl:w-4/5"
			src={image}
			style="color: transparent;"
		/>
	</div>
</div>
