<script>
	export let number = '';
	export let label = '';
	export let color = '#8e51ff';
	export let className = '';
</script>

<div class="transform-none opacity-100 {className}">
	<div class="relative rounded-xl border border-[#ffffff1a] shadow-2xl">
		<div class="flex -translate-y-[1px] justify-center">
			<div class="w-3/4">
				<div
					class="h-[1px] w-full bg-gradient-to-r from-transparent to-transparent"
					style="background: linear-gradient(to right, transparent, {color}, transparent);"
				></div>
			</div>
		</div>
		<div class="flex flex-col items-center justify-center p-8 text-center">
			<p class="mb-2 text-2xl font-bold md:text-3xl lg:text-4xl" style="color: {color};">
				{number}
			</p>
			<p class="mb-0 leading-5">{label}</p>
		</div>
	</div>
</div>
