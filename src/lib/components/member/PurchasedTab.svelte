<script lang="ts">
	// Props
	export let member: any;
</script>

<div class="tab-content">
	<div class="mb-6 flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center">
		<h2 class="text-3xl font-bold">Khóa Học Đã Mua</h2>
		<div class="flex items-center gap-3">
			<span class="text-gray-400">Tổng chi tiêu:</span>
			<span class="text-primary text-2xl font-bold">$850.00</span>
		</div>
	</div>

	<div class="space-y-8">
		<div class="grid gap-6 md:grid-cols-2 xl:grid-cols-3">
			<!-- Purchase Item 1 -->
			<div
				class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
			>
				<div
					class="relative flex h-48 items-center justify-center bg-gradient-to-br from-purple-600 to-pink-600"
				>
					<span class="text-6xl">🤖</span>
					<span class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
						>Đã Mua</span
					>
				</div>
				<div class="p-6">
					<h3 class="mb-2 text-xl font-bold">Build AI-Powered Apps</h3>
					<p class="mb-4 text-sm text-gray-400">Mua ngày: 15/09/2024</p>
					<div class="mb-3 flex flex-wrap gap-2">
						<span
							class="bg-primary/20 text-primary border-primary/30 rounded-full border px-3 py-1 text-xs font-medium"
							>VIP Access</span
						>
						<span
							class="rounded-full border border-blue-500/30 bg-blue-500/20 px-3 py-1 text-xs font-medium text-blue-400"
							>Lifetime</span
						>
					</div>
					<div class="mb-4 flex items-center justify-between">
						<span class="text-primary text-2xl font-bold">$89.00</span>
						<span class="text-xs text-gray-500">Một lần thanh toán</span>
					</div>
					<button
						class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
					>
						📄 Xem Hóa Đơn
					</button>
				</div>
			</div>

			<!-- Purchase Item 2 -->
			<div
				class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
			>
				<div
					class="relative flex h-48 items-center justify-center bg-gradient-to-br from-blue-600 to-cyan-600"
				>
					<span class="text-6xl">⚛️</span>
					<span class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
						>Đã Mua</span
					>
				</div>
				<div class="p-6">
					<h3 class="mb-2 text-xl font-bold">React 18 cho Người Mới</h3>
					<p class="mb-4 text-sm text-gray-400">Mua ngày: 01/10/2024</p>
					<div class="mb-3 flex flex-wrap gap-2">
						<span
							class="bg-primary/20 text-primary border-primary/30 rounded-full border px-3 py-1 text-xs font-medium"
							>VIP Access</span
						>
						<span
							class="rounded-full border border-blue-500/30 bg-blue-500/20 px-3 py-1 text-xs font-medium text-blue-400"
							>Lifetime</span
						>
					</div>
					<div class="mb-4 flex items-center justify-between">
						<span class="text-primary text-2xl font-bold">$75.00</span>
						<span class="text-xs text-gray-500">Một lần thanh toán</span>
					</div>
					<button
						class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
					>
						📄 Xem Hóa Đơn
					</button>
				</div>
			</div>

			<!-- Purchase Item 3 - Bundle -->
			<div
				class="border-primary/50 hover:border-primary hover:shadow-primary/20 overflow-hidden rounded-2xl border-2 bg-gradient-to-br from-[#2d1b3d] to-[#1e1e1e] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
			>
				<div
					class="relative flex h-48 items-center justify-center bg-gradient-to-br from-yellow-600 to-orange-600"
				>
					<span class="text-6xl">📦</span>
					<span
						class="absolute top-4 right-4 rounded-full bg-yellow-500 px-3 py-1 text-xs font-bold text-black"
						>Best Value</span
					>
				</div>
				<div class="p-6">
					<h3 class="mb-2 text-xl font-bold">VIP Bundle - 10 Khóa Học</h3>
					<p class="mb-4 text-sm text-gray-400">Mua ngày: 20/07/2024</p>
					<div class="mb-3 flex flex-wrap gap-2">
						<span
							class="rounded-full border border-yellow-500/30 bg-yellow-500/20 px-3 py-1 text-xs font-medium text-yellow-400"
							>Best Value</span
						>
						<span
							class="bg-primary/20 text-primary border-primary/30 rounded-full border px-3 py-1 text-xs font-medium"
							>VIP Bundle</span
						>
						<span
							class="rounded-full border border-blue-500/30 bg-blue-500/20 px-3 py-1 text-xs font-medium text-blue-400"
							>Lifetime</span
						>
					</div>
					<div class="mb-4 flex items-center justify-between">
						<div class="flex flex-col">
							<span class="text-primary text-2xl font-bold">$300.00</span>
							<span class="text-sm text-gray-400 line-through">$890.00</span>
						</div>
						<span class="text-xs text-gray-500">Tiết kiệm 66%</span>
					</div>
					<button
						class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
					>
						📄 Xem Hóa Đơn
					</button>
				</div>
			</div>

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
					<p class="mb-4 text-sm text-gray-400">Mua ngày: 20/07/2024</p>
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
						<span class="text-xs text-gray-500">Khóa học miễn phí</span>
					</div>
					<button
						class="w-full rounded-xl bg-green-600 py-3 font-semibold transition-all duration-300 hover:scale-105 hover:bg-green-700"
					>
						📄 Xem Hóa Đơn
					</button>
				</div>
			</div>
		</div>

		<!-- Purchase Summary -->
		<div
			class="mt-8 rounded-2xl border border-[#2a2a2a] bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] p-6"
		>
			<h3 class="mb-4 text-xl font-bold">Tóm Tắt Giao Dịch</h3>
			<div class="space-y-3">
				<div class="flex justify-between text-gray-400">
					<span>Tổng số khóa học đã mua:</span>
					<span class="font-semibold text-white">12 khóa học</span>
				</div>
				<div class="flex justify-between text-gray-400">
					<span>Tổng chi tiêu:</span>
					<span class="font-semibold text-white">$850.00</span>
				</div>
				<div class="flex justify-between text-gray-400">
					<span>Tiết kiệm được:</span>
					<span class="font-semibold text-green-500">$1,240.00 (59%)</span>
				</div>
				<div class="flex justify-between border-t border-[#2a2a2a] pt-3">
					<span class="font-bold">Giá trị thực tế:</span>
					<span class="text-primary text-2xl font-bold">$2,090.00</span>
				</div>
			</div>
		</div>
	</div>
</div>
