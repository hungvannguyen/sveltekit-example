<script lang="ts">
	// Props
	export let member: any;
</script>

<div class="tab-content">
	<div class="mb-6 flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center">
		<h2 class="text-3xl font-bold">Purchased Courses</h2>
		<div class="flex items-center gap-3">
			<span class="text-gray-400">Total Spent:</span>
			<span class="text-primary text-2xl font-bold">$850.00</span>
		</div>
	</div>

	<div class="space-y-8">
		<div class="grid gap-6 md:grid-cols-2 xl:grid-cols-3">
			<!-- Purchase Item 4 -->
			<div
				class="overflow-hidden rounded-2xl border border-green-500/50 bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:border-green-500 hover:shadow-2xl hover:shadow-green-500/20"
			>
				<div
					class="relative flex h-48 items-center justify-center bg-gradient-to-br from-green-600 to-emerald-600"
				>
					<span class="text-6xl">🐍</span>
					<span class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
						>Completed</span
					>
				</div>
				<div class="p-6">
					<h3 class="mb-2 text-xl font-bold">Python Programming</h3>
					<p class="mb-4 text-sm text-gray-400">Purchase Date: 20/07/2024</p>
					<div class="mb-3 flex flex-wrap gap-2">
						<span
							class="rounded-full border border-green-500/30 bg-green-500/20 px-3 py-1 text-xs font-medium text-green-400"
							>Completed</span
						>
						<span
							class="rounded-full border border-blue-500/30 bg-blue-500/20 px-3 py-1 text-xs font-medium text-blue-400"
							>Lifetime</span
						>
					</div>
					<div class="mb-4 flex items-center justify-between">
						<span class="text-2xl font-bold text-green-500">FREE</span>
						<span class="text-xs text-gray-500">Free Course</span>
					</div>
					<button
						class="w-full rounded-xl bg-green-600 py-3 font-semibold transition-all duration-300 hover:scale-105 hover:bg-green-700"
					>
						📄 View Invoice
					</button>
				</div>
			</div>
		</div>

		<!-- Purchase Summary -->
		<div
			class="mt-8 rounded-2xl border border-[#2a2a2a] bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] p-6"
		>
			<h3 class="mb-4 text-xl font-bold">Transaction Summary</h3>
			<div class="space-y-3">
				<div class="flex justify-between text-gray-400">
					<span>Total courses purchased:</span>
					<span class="font-semibold text-white">12 courses</span>
				</div>
				<div class="flex justify-between text-gray-400">
					<span>Total spent:</span>
					<span class="font-semibold text-white">$850.00</span>
				</div>
				<div class="flex justify-between text-gray-400">
					<span>Savings:</span>
					<span class="font-semibold text-green-500">$1,240.00 (59%)</span>
				</div>
				<div class="flex justify-between border-t border-[#2a2a2a] pt-3">
					<span class="font-bold">Actual value:</span>
					<span class="text-primary text-2xl font-bold">$2,090.00</span>
				</div>
			</div>
		</div>
	</div>
</div>
