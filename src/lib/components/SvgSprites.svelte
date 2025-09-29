<script lang="ts">
	import { icons } from '$lib/icons';
</script>

<!-- SVG Sprites Component -->
<svg style="display: none;" aria-hidden="true">
	<defs>
		{#each Object.entries(icons) as [name, icon]}
			<symbol id="social__{name}" viewBox={icon.viewBox}>
				<path fill="currentColor" d={icon.path} />
			</symbol>
		{/each}
	</defs>
</svg>
