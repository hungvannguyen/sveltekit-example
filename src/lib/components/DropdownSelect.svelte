<script>
	import { onMount, onDestroy } from 'svelte';

	export let options = [];
	export let selectedValue = '';
	export let name = 'select';

	let isOpen = false;
	let selectedLabel =
		options.find((opt) => opt.value === selectedValue)?.label ||
		options[0]?.label ||
		'Select option';
	let dropdownButton;
	let showAbove = false;

	function calculatePosition() {
		if (dropdownButton) {
			const rect = dropdownButton.getBoundingClientRect();
			const spaceBelow = window.innerHeight - rect.bottom;
			const spaceAbove = rect.top;
			const dropdownHeight = Math.min(options.length * 48 + 16, 280);

			showAbove = spaceBelow < dropdownHeight && spaceAbove >= dropdownHeight;
		}
	}

	function toggle() {
		if (!isOpen) {
			calculatePosition();
		}
		isOpen = !isOpen;
	}

	function handleResize() {
		if (isOpen) {
			calculatePosition();
		}
	}

	onMount(() => {
		window.addEventListener('resize', handleResize);
		window.addEventListener('scroll', handleResize);
	});

	onDestroy(() => {
		window.removeEventListener('resize', handleResize);
		window.removeEventListener('scroll', handleResize);
	});

	function select(option) {
		selectedValue = option.value;
		selectedLabel = option.label;
		isOpen = false;
	}

	$: if (selectedValue) {
		const found = options.find((opt) => opt.value === selectedValue);
		if (found) selectedLabel = found.label;
	}
</script>

<div class="relative w-auto">
	<!-- Dropdown Button -->
	<button
		bind:this={dropdownButton}
		class="flex w-full items-center justify-between gap-5 rounded-md border border-[#ffffff1a] px-3 py-2 text-[#fff] transition-colors"
		type="button"
		on:click={toggle}
	>
		{selectedLabel}
		<svg
			xmlns="http://www.w3.org/2000/svg"
			width="24"
			height="24"
			viewBox="0 0 24 24"
			fill="none"
			stroke="currentColor"
			stroke-width="2"
			stroke-linecap="round"
			stroke-linejoin="round"
			class="lucide-icon lucide lucide-chevron-down size-4 opacity-50 transition-transform duration-200 {isOpen
				? 'rotate-180'
				: ''}"
		>
			<path d="m6 9 6 6 6-6"></path>
		</svg>
	</button>

	<!-- Dropdown Menu -->
	{#if isOpen}
		<div
			class="animate-in fade-in-0 zoom-in-95 absolute right-0 left-0 z-50 w-[290px] max-w-[290px] overflow-hidden rounded-md border border-[#ffffff1a] bg-[#0b0809] shadow-lg duration-200 {showAbove
				? 'bottom-full mb-1'
				: 'top-full mt-[-10px]'}"
		>
			{#each options as option}
				<button
					class="flex w-full items-center justify-between px-3 py-2 text-left text-[#fff] transition-colors duration-150 hover:bg-violet-500"
					on:click={() => select(option)}
				>
					{option.label}
					{#if selectedValue === option.value}
						<svg
							xmlns="http://www.w3.org/2000/svg"
							width="24"
							height="24"
							viewBox="0 0 24 24"
							fill="none"
							stroke="currentColor"
							stroke-width="2"
							stroke-linecap="round"
							stroke-linejoin="round"
							class="size-4 text-violet-500"
						>
							<path d="M20 6 9 17l-5-5"></path>
						</svg>
					{/if}
				</button>
			{/each}
		</div>
	{/if}

	<input
		{name}
		value={selectedValue}
		aria-hidden="true"
		tabindex="-1"
		style="position: absolute; width: 1px; height: 1px; padding: 0px; margin: -1px; overflow: hidden; clip: rect(0px, 0px, 0px, 0px); white-space: nowrap; border-width: 0px; transform: translateX(-100%);"
	/>
</div>
