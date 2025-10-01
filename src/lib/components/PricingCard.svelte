<script>
	import Button from './Button.svelte';

	/**
	 * @typedef {Object} FeatureItem
	 * @property {string} text
	 */

	/** @type {string} */
	export let title = '';

	/** @type {string} */
	export let description = '';

	/** @type {string} */
	export let price = '';

	/** @type {string} */
	export let taxNote = '';

	/** @type {string} */
	export let buttonText = '';

	/** @type {string} */
	export let buttonHref = '';

	/** @type {string} */
	export let disclaimer = '';

	/** @type {FeatureItem[]} */
	export let features = [];

	/** @type {boolean} */
	export let showBadge = false;

	/** @type {string} */
	export let badgeText = '';

	/** @type {string} */
	export let className = '';
</script>

<div class="relative w-full md:max-w-[450px] {className}">
	<div class="relative rounded-3xl bg-gradient-to-b from-slate-700 to-transparent p-[1px]">
		<div
			class="via-slate-850 overflow-hidden rounded-3xl bg-gradient-to-b from-slate-800 to-slate-900 p-6 shadow-lg md:p-8"
		>
			<h4 class="mb-2 w-40 text-2xl font-bold text-white md:w-auto">{title}</h4>
			<p class="text-gray-350 font-medium">{description}</p>

			<div class="my-6 h-30">
				<div data-testid="price-tag">
					<span class="text-5xl font-bold dark:text-white">{price}</span>
				</div>
				{#if taxNote}
					<div class="text-gray-350 my-2">
						<span>{taxNote}</span>
					</div>
				{/if}
			</div>

			<div class="flex flex-col items-center px-6 md:px-8 lg:px-12">
				{#if showBadge && badgeText}
					<div class="absolute top-8 right-5 flex flex-col gap-1 md:top-9">
						<div
							class="inline rounded-md bg-pink-500 px-3 py-1 text-sm font-medium text-white md:font-bold"
						>
							{badgeText}
						</div>
					</div>
				{/if}

				<Button text={buttonText} href={buttonHref} variant="violet" className="w-full" />

				{#if disclaimer}
					<p class="text-gray-350 my-2 text-sm font-semibold">{disclaimer}</p>
				{/if}
			</div>

			{#if features.length > 0}
				<div class="mt-10 w-full">
					<div class="mb-4 font-medium text-[#7f7f7f]">What's included:</div>
					<div
						class="prose prose-sm max-w-none text-white [&_li]:mb-2 [&_li]:flex [&_li]:items-start [&_li]:gap-2 [&_li]:before:flex-shrink-0 [&_li]:before:font-bold [&_li]:before:text-green-400 [&_li]:before:content-['✓'] [&_ul]:list-none"
					>
						<ul>
							{#each features as feature}
								<li>{feature.text}</li>
							{/each}
						</ul>
					</div>
				</div>
			{/if}
		</div>
	</div>
</div>
