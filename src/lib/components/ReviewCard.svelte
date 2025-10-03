<script lang="ts">
	export let name: string;
	export let avatar: string = '';
	export let review: string | string[];
	export let rating: number = 5;

	// Convert rating to star image path
	$: starImage = `/images/${rating}.ea72dfc5.svg`;

	// Handle review content - can be string or array of paragraphs
	$: reviewParagraphs = Array.isArray(review) ? review : [review];
</script>

<li>
	<div
		class="relative overflow-hidden rounded-lg border border-slate-800 transition-colors duration-200 ease-in-out"
	>
		<figure class="h-full rounded-2xl p-5">
			<figcaption class="mb-5 flex items-center gap-x-4">
				{#if avatar}
					<img
						alt={name}
						loading="lazy"
						width="40"
						height="40"
						decoding="async"
						data-nimg="1"
						class="h-10 w-10 rounded-full bg-gray-50"
						src={avatar}
						style="color: transparent;"
					/>
				{/if}
				<div>
					<div class="font-semibold text-white">{name}</div>
					<img
						alt="Stars"
						data-testid="trust-stars"
						fetchpriority="high"
						width="90"
						height="30"
						decoding="async"
						data-nimg="1"
						class="inline"
						src={starImage}
						style="color: transparent;"
					/>
				</div>
			</figcaption>
			<blockquote>
				{#each reviewParagraphs as paragraph}
					<p>{paragraph}</p>
				{/each}
			</blockquote>
		</figure>
	</div>
</li>
