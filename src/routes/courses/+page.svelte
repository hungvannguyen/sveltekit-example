<script>
	import DropdownSelect from '$lib/components/DropdownSelect.svelte';
	import CourseCard from '$lib/components/CourseCard.svelte';

	let selectedCategoryValue = 'all';

	const courses = [
		{
			href: '/blog/xa-ut0-is-gold-without-borders-q-and-a-with-usdt-0-co-founder-lorenzo-r',
			imageSrc: 'https://cms.firebits.top/assets/24ccfc7a-c4c9-4fc0-af5a-148d26c85aa5',
			imageAlt: 'XAUt0 is gold without borders: Q&A with USDT0 co-founder Lorenzo R',
			title: 'XAUt0 is gold without borders: Q&A with USDT0 co-founder Lorenzo R',
			description:
				"As digital assets evolve, we're starting to see more real-world value being brought on-chain, quite literally."
		},
		{
			href: '/blog/doge-coin-faces-key-resistance-will-bulls-establish-a-higher-low-before-the-next-leg-up',
			imageSrc: 'https://cms.firebits.top/assets/8e4ae129-d66e-46fe-8a56-c2edea6ac672',
			imageAlt:
				'DOGE coin faces key resistance: will bulls establish a Higher Low before the next leg up?',
			title:
				'DOGE coin faces key resistance: will bulls establish a Higher Low before the next leg up?',
			description:
				'Dogecoin has maintained a short-term uptrend, but it now faces a critical technical resistance zone that could trigger a corrective move.'
		},
		{
			href: '/blog/bitcoin-skeptical-vanguard-holds-20m-shares-in-strategy-amid-index-inflows',
			imageSrc: 'https://cms.firebits.top/assets/e1910b17-deea-4044-a028-31b9e7584bf7',
			imageAlt: 'Bitcoin-skeptical Vanguard holds $20M shares in strategy amid index inflows',
			title: 'Bitcoin-skeptical Vanguard holds $20M shares in strategy amid index inflows',
			description:
				'Vanguard has quietly accumulated a $20 million position in a Bitcoin strategy fund, despite its historically cautious stance on cryptocurrencies.'
		},
		{
			href: '/blog/chainlink-labs-launches-runtime-environment-for-blockchain-interoperability',
			imageSrc: 'https://cms.firebits.top/assets/8ad95d6a-f5de-4b0c-b486-17b8e461b5b0',
			imageAlt: 'Chainlink Labs launches Runtime Environment for blockchain interoperability',
			title: 'Chainlink Labs launches Runtime Environment for blockchain interoperability',
			description:
				'Chainlink Labs has unveiled a comprehensive runtime environment designed to enhance blockchain interoperability and cross-chain communication.'
		},
		{
			href: '/blog/trump-pick-howard-lutnick-eyes-stablecoin-opportunities-for-treasury-department',
			imageSrc: 'https://cms.firebits.top/assets/e17e01b0-33d8-497e-87cb-84e68cfbe966',
			imageAlt: 'Trump pick Howard Lutnick eyes stablecoin opportunities for Treasury Department',
			title: 'Trump pick Howard Lutnick eyes stablecoin opportunities for Treasury Department',
			description:
				'Treasury Secretary nominee Howard Lutnick is reportedly exploring the integration of stablecoins into government financial operations.'
		},
		{
			href: '/blog/ftx-claims-worth-over-100-of-customer-losses-says-administrator',
			imageSrc: 'https://cms.firebits.top/assets/4c486e33-e717-4817-b4dc-e5f42de1a294',
			imageAlt: 'FTX claims worth over 100% of customer losses, says administrator',
			title: 'FTX claims worth over 100% of customer losses, says administrator',
			description:
				'FTX bankruptcy administrators report that recovered assets exceed 100% of identified customer losses, providing hope for full restitution.'
		},
		{
			href: '/blog/gary-genslers-final-sec-meeting-focuses-on-crypto-market-structure-rules',
			imageSrc: 'https://cms.firebits.top/assets/278c48f9-31d7-4c8f-8a5b-432e52699fa4',
			imageAlt: "Gary Gensler's final SEC meeting focuses on crypto market structure rules",
			title: "Gary Gensler's final SEC meeting focuses on crypto market structure rules",
			description:
				"SEC Chairman Gary Gensler's final meeting will address comprehensive crypto market structure regulations before his departure."
		},
		{
			href: '/blog/bitcoin-spot-etfs-see-dramatic-turnaround-with-549m-inflows-this-week',
			imageSrc: 'https://cms.firebits.top/assets/3e7342f5-73b3-423f-9fd2-f365c4ad8b98',
			imageAlt: 'Bitcoin Spot ETFs see dramatic turnaround with $549M inflows this week',
			title: 'Bitcoin Spot ETFs see dramatic turnaround with $549M inflows this week',
			description:
				'Bitcoin spot ETFs experienced a remarkable reversal, attracting $549 million in net inflows after recent periods of outflows.'
		},
		{
			href: '/blog/bitcoin-addresses-holding-over-1-btc-hit-new-all-time-high-of-1-024-million',
			imageSrc: 'https://cms.firebits.top/assets/72f07496-24e8-4651-8c1b-f92fec9e7b22',
			imageAlt: 'Bitcoin addresses holding over 1 BTC hit new all-time high of 1.024 million',
			title: 'Bitcoin addresses holding over 1 BTC hit new all-time high of 1.024 million',
			description:
				'The number of Bitcoin addresses containing more than 1 BTC has reached a historic milestone of 1.024 million addresses.'
		}
	];

	const categories = [
		{ value: 'all', label: 'All courses' },
		{ value: 'frontend', label: 'Frontend development' },
		{ value: 'backend', label: 'Backend development' },
		{ value: 'se', label: 'Software Engineering Essentials' }
	];

	/**
	 * Handle category selection change
	 * @param {CustomEvent} event
	 */
	function handleCategoryChange(event) {
		selectedCategoryValue = event.detail.value;
		console.log('Selected category:', event.detail);
	}
</script>

<div class="py-8">
	<div
		class="container mx-auto mb-6 flex w-full flex-col items-center justify-center text-center md:my-6 lg:my-10"
	>
		<h1 class="mb-8 text-4xl leading-[1.2] lg:text-5xl">Build Real-World Skills</h1>
		<p class="max-w-prose text-lg !leading-[1.6] lg:text-2xl">
			Master software development with structured courses designed to make you job-ready.
		</p>
	</div>

	<div class="container mx-auto">
		<div class="mb-5 flex flex-wrap md:flex-nowrap">
			<div class="mb-5 w-full md:mr-5 lg:w-[33rem]">
				<input
					class="placeholder:text-muted-[#7f7f7f] focus-visible:ring-ring flex h-10 w-full rounded-md border border-[#ffffff1a] bg-[#0b0809] px-3 py-5 ring-offset-[#0b0809] file:border-0 file:bg-transparent file:text-sm file:font-medium focus:border-white focus-visible:ring-0 focus-visible:ring-offset-2 focus-visible:outline-none disabled:cursor-not-allowed disabled:opacity-50"
					placeholder="Search"
					name="search"
					type="text"
				/>
			</div>
			<DropdownSelect
				options={categories}
				selectedValue={selectedCategoryValue}
				name="category"
				on:change={handleCategoryChange}
			/>
		</div>
		<div class="flex flex-col items-center">
			<div class="mt-10 grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
				{#each courses as course}
					<CourseCard
						href={course.href}
						imageSrc={course.imageSrc}
						imageAlt={course.imageAlt}
						title={course.title}
						description={course.description}
					/>
				{/each}
			</div>
		</div>
	</div>
</div>
