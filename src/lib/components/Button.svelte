<script>
	/**
	 * @typedef {'primary' | 'secondary' | 'violet' | 'pink'} ButtonVariant
	 */

	/** @type {string} */
	export let href = '';

	/** @type {string} */
	export let text = '';

	/** @type {ButtonVariant} */
	export let variant = 'primary';

	/** @type {string} */
	export let className = '';

	/** @type {boolean} */
	export let showIcon = false;

	const variants = {
		primary: 'bg-violet-500 hover:bg-violet-650',
		secondary: 'bg-pink-700 hover:bg-pink-600',
		violet: 'bg-violet-500 hover:bg-violet-650',
		pink: 'bg-pink-700 hover:bg-pink-600'
	};

	$: variantClass = variants[variant] || variants.primary;
</script>

<a
	class="group text-md {variantClass} undefined inline-block rounded-full px-6 py-3 text-center font-medium text-white no-underline transition-all duration-200 ease-out hover:text-white hover:no-underline md:font-semibold {className}"
	role="button"
	{href}
>
	{text}
	{#if showIcon}
		<svg
			xmlns="http://www.w3.org/2000/svg"
			viewBox="0 0 24 24"
			fill="currentColor"
			aria-hidden="true"
			class="inline-block h-4 w-6 transition-all duration-200 ease-out group-hover:ml-3"
		>
			<path
				fill-rule="evenodd"
				d="M12.97 3.97a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 11-1.06-1.06l6.22-6.22H3a.75.75 0 010-1.5h16.19l-6.22-6.22a.75.75 0 010-1.06z"
				clip-rule="evenodd"
			></path>
		</svg>
	{/if}
</a>
