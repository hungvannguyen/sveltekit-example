<script>
	import { onMount } from 'svelte';

	/**
	 * @typedef {Object} DropdownOption
	 * @property {string} value
	 * @property {string} label
	 */

	/** @type {DropdownOption[]} */
	export let options = [];
	export let selectedValue = '';
	export let placeholder = 'Select option';
	export let name = 'select';
	export let className = '';

	let isDropdownOpen = false;
	/** @type {HTMLElement | undefined} */
	let dropdownRef;
	/** @type {DropdownOption} */
	let selectedOption = options.find((opt) => opt.value === selectedValue) ||
		options[0] || { label: placeholder, value: '' };

	function toggleDropdown() {
		isDropdownOpen = !isDropdownOpen;
	}

	/** @param {DropdownOption} option */
	function selectOption(option) {
		selectedOption = option;
		selectedValue = option.value;
		isDropdownOpen = false;

		// Dispatch custom event for parent component
		const event = new CustomEvent('change', {
			detail: { value: option.value, label: option.label }
		});
		if (dropdownRef) {
			dropdownRef.dispatchEvent(event);
		}
	}

	/** @param {Event} event */
	function handleClickOutside(event) {
		if (
			dropdownRef &&
			event.target &&
			dropdownRef.contains(/** @type {Node} */ (event.target)) === false
		) {
			isDropdownOpen = false;
		}
	}

	onMount(() => {
		document.addEventListener('click', handleClickOutside);
		return () => {
			document.removeEventListener('click', handleClickOutside);
		};
	});

	// Update selected option when selectedValue prop changes
	$: if (selectedValue) {
		const newSelected = options.find((opt) => opt.value === selectedValue);
		if (newSelected) {
			selectedOption = newSelected;
		}
	}
</script>

<div class="relative w-auto {className}" bind:this={dropdownRef}>
	<!-- Dropdown Button -->
	<button
		class="flex w-full items-center justify-between gap-5 rounded-md border border-[#ffffff1a] px-3 py-2 text-[#fff] transition-colors hover:border-white"
		aria-haspopup="listbox"
		aria-expanded={isDropdownOpen}
		data-state={isDropdownOpen ? 'open' : 'closed'}
		type="button"
		on:click={toggleDropdown}
	>
		{selectedOption.label}
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
			class="lucide-icon lucide lucide-chevron-down size-4 opacity-50 transition-transform duration-200 {isDropdownOpen
				? 'rotate-180'
				: ''}"
		>
			<path d="m6 9 6 6 6-6"></path>
		</svg>
	</button>

	<!-- Dropdown Menu -->
	{#if isDropdownOpen}
		<div
			class="animate-in fade-in-0 zoom-in-95 absolute top-full right-0 left-0 z-50 mt-1 w-[290px] max-w-[290px] overflow-hidden rounded-md border border-[#ffffff1a] bg-[#0b0809] shadow-lg duration-200"
			role="listbox"
		>
			{#each options as option}
				<button
					class="flex w-full items-center justify-between px-3 py-2 text-left text-[#fff] transition-colors duration-150 hover:bg-violet-500 {selectedOption.value ===
					option.value
						? 'bg-violet-500/20'
						: ''}"
					role="option"
					aria-selected={selectedOption.value === option.value}
					on:click={() => selectOption(option)}
				>
					{option.label}
					{#if selectedOption.value === option.value}
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
