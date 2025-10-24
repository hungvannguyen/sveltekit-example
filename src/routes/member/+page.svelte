<script lang="ts">
	import { onMount } from 'svelte';

	let activeTab = 'profile';
	let sidebarOpen = false;

	function switchTab(tabName: string) {
		activeTab = tabName;
		// Close sidebar on mobile after selecting a tab
		if (window.innerWidth < 1024) {
			sidebarOpen = false;
		}
	}

	function toggleSidebar() {
		sidebarOpen = !sidebarOpen;
	}

	function saveProfile() {
		// TODO: Implement save profile functionality
		alert('Thông tin đã được lưu!');
	}

	onMount(() => {
		// Initialize with profile tab active
		activeTab = 'profile';
	});
</script>

<!-- Main Content -->
<div class="mx-auto max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
	<!-- Mobile Menu Button -->
	<div class="mb-6 lg:hidden">
		<button
			on:click={toggleSidebar}
			class="flex items-center gap-2 rounded-xl bg-[#1a1a1a] px-4 py-3 text-white transition-colors hover:bg-[#2a2a2a]"
		>
			<span class="text-lg">☰</span>
			Menu
		</button>
	</div>

	<div class="relative flex gap-8">
		<!-- Mobile Overlay -->
		{#if sidebarOpen}
			<div class="fixed inset-0 z-40 bg-black/50 lg:hidden" on:click={toggleSidebar}></div>
		{/if}

		<!-- Sidebar Navigation -->
		<div
			class="w-72 flex-shrink-0 {sidebarOpen
				? 'fixed inset-y-0 left-0 z-50 bg-[#0b0809] p-4'
				: 'hidden'} lg:static lg:block lg:bg-transparent lg:p-0"
		>
			<div
				class="sticky top-8 rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] p-4 {sidebarOpen
					? 'mt-8'
					: ''}"
			>
				<div class="mb-6 flex items-center justify-between">
					<h2 class="text-xl font-bold text-white">Tài Khoản</h2>
					<!-- Close button for mobile -->
					<button on:click={toggleSidebar} class="text-gray-400 hover:text-white lg:hidden">
						<span class="text-lg">✕</span>
					</button>
				</div>
				<nav class="space-y-2">
					<button
						class="sidebar-tab {activeTab === 'profile'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('profile')}
					>
						<span class="text-lg">👤</span>
						Thông Tin Cá Nhân
					</button>
					<button
						class="sidebar-tab {activeTab === 'courses'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('courses')}
					>
						<span class="text-lg">📚</span>
						Khóa Học Của Tôi
					</button>
					<button
						class="sidebar-tab {activeTab === 'progress'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('progress')}
					>
						<span class="text-lg">📊</span>
						Tiến Độ Học Tập
					</button>
					<button
						class="sidebar-tab {activeTab === 'purchased'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('purchased')}
					>
						<span class="text-lg">💳</span>
						Khóa Học Đã Mua
					</button>
					<button
						class="sidebar-tab {activeTab === 'certificates'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('certificates')}
					>
						<span class="text-lg">🏆</span>
						Chứng Chỉ
					</button>
				</nav>
			</div>
		</div>

		<!-- Content Area -->
		<div class="min-w-0 flex-1">
			<!-- Profile Tab -->
			{#if activeTab === 'profile'}
				<div class="tab-content">
					<div class="mb-6">
						<h2 class="text-3xl font-bold">Thông Tin Cá Nhân</h2>
					</div>

					<div class="space-y-8">
						<!-- Profile Header Card -->
						<div
							class="rounded-3xl border border-[#2a2a2a] bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] p-8"
						>
							<div
								class="flex flex-col items-center space-y-6 md:flex-row md:items-start md:space-y-0 md:space-x-8"
							>
								<div class="relative">
									<div
										class="from-primary to-secondary border-primary/50 flex h-32 w-32 items-center justify-center rounded-full border-4 bg-gradient-to-br text-5xl"
									>
										👨‍🎓
									</div>
									<div
										class="absolute -right-2 -bottom-2 h-8 w-8 rounded-full border-4 border-[#1e1e1e] bg-green-500"
									></div>
								</div>
								<div class="flex-1 text-center md:text-left">
									<h1 class="mb-2 text-4xl font-bold">Hung Van Nguyen</h1>
									<p class="mb-4 text-lg text-gray-400">@hungvannguyen</p>
									<p class="mb-4 text-gray-300">Học viên nhiệt huyết | Full-stack Developer</p>
									<div class="flex flex-wrap justify-center gap-2 md:justify-start">
										<span
											class="bg-primary/20 text-primary border-primary/30 rounded-full border px-4 py-1 text-sm"
											>VIP Member</span
										>
										<span
											class="rounded-full border border-blue-500/30 bg-blue-500/20 px-4 py-1 text-sm text-blue-400"
											>Đã xác thực Email</span
										>
										<span
											class="rounded-full border border-green-500/30 bg-green-500/20 px-4 py-1 text-sm text-green-400"
											>Thành viên từ 2024</span
										>
									</div>
								</div>
							</div>

							<!-- Stats Grid -->
							<div class="mt-8 grid grid-cols-2 gap-4 md:grid-cols-4">
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
								>
									<div class="text-primary mb-1 text-3xl font-bold">12</div>
									<div class="text-sm text-gray-400">Khóa Học Đã Mua</div>
								</div>
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
								>
									<div class="text-primary mb-1 text-3xl font-bold">5</div>
									<div class="text-sm text-gray-400">Đã Hoàn Thành</div>
								</div>
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
								>
									<div class="text-primary mb-1 text-3xl font-bold">156h</div>
									<div class="text-sm text-gray-400">Thời Gian Học</div>
								</div>
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
								>
									<div class="text-primary mb-1 text-3xl font-bold">98%</div>
									<div class="text-sm text-gray-400">Điểm Trung Bình</div>
								</div>
							</div>
						</div>

						<!-- Edit Profile Form -->
						<div class="rounded-3xl border border-[#2a2a2a] bg-[#1a1a1a] p-8">
							<div class="mb-6 flex items-center justify-between">
								<h2 class="text-2xl font-bold">Cập Nhật Thông Tin</h2>
								<button
									on:click={saveProfile}
									class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 rounded-full bg-gradient-to-r px-6 py-2 text-sm font-semibold transition-all duration-300 hover:scale-105"
								>
									💾 Lưu Thay Đổi
								</button>
							</div>

							<div class="grid gap-6 md:grid-cols-2">
								<div>
									<label class="mb-2 block text-sm font-medium text-gray-400">Họ và Tên</label>
									<input
										type="text"
										value="Hung Van Nguyen"
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
									/>
								</div>
								<div>
									<label class="mb-2 block text-sm font-medium text-gray-400">Tên Người Dùng</label>
									<input
										type="text"
										value="hungvannguyen"
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
									/>
								</div>
								<div>
									<label class="mb-2 block text-sm font-medium text-gray-400">Email</label>
									<input
										type="email"
										value="hungvannguyen@example.com"
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
									/>
								</div>
								<div>
									<label class="mb-2 block text-sm font-medium text-gray-400">Số Điện Thoại</label>
									<input
										type="tel"
										value="+84 123 456 789"
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
									/>
								</div>
								<div class="md:col-span-2">
									<label class="mb-2 block text-sm font-medium text-gray-400"
										>Giới Thiệu Bản Thân</label
									>
									<textarea
										rows="4"
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
										>Tôi là một lập trình viên đam mê học hỏi và phát triển kỹ năng mới mỗi ngày.</textarea
									>
								</div>
								<div>
									<label class="mb-2 block text-sm font-medium text-gray-400">Nghề Nghiệp</label>
									<input
										type="text"
										value="Full-stack Developer"
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
									/>
								</div>
								<div>
									<label class="mb-2 block text-sm font-medium text-gray-400">Công Ty</label>
									<input
										type="text"
										value="Tech Startup Co."
										class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
									/>
								</div>
							</div>

							<div class="mt-8 border-t border-[#2a2a2a] pt-6">
								<h3 class="mb-4 text-xl font-bold">Đổi Mật Khẩu</h3>
								<div class="grid gap-6 md:grid-cols-3">
									<div>
										<label class="mb-2 block text-sm font-medium text-gray-400"
											>Mật Khẩu Hiện Tại</label
										>
										<input
											type="password"
											class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
										/>
									</div>
									<div>
										<label class="mb-2 block text-sm font-medium text-gray-400">Mật Khẩu Mới</label>
										<input
											type="password"
											class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
										/>
									</div>
									<div>
										<label class="mb-2 block text-sm font-medium text-gray-400"
											>Xác Nhận Mật Khẩu</label
										>
										<input
											type="password"
											class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
										/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			{/if}

			<!-- My Courses Tab -->
			{#if activeTab === 'courses'}
				<div class="tab-content">
					<div
						class="mb-6 flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center"
					>
						<h2 class="text-3xl font-bold">Khóa Học Đang Học</h2>
						<div class="flex gap-2">
							<button
								class="bg-primary/20 text-primary border-primary/30 hover:bg-primary/30 rounded-lg border px-4 py-2 transition-colors"
								>Tất Cả</button
							>
							<button
								class="rounded-lg bg-[#1a1a1a] px-4 py-2 text-gray-400 transition-colors hover:bg-[#2a2a2a]"
								>Đang Học</button
							>
							<button
								class="rounded-lg bg-[#1a1a1a] px-4 py-2 text-gray-400 transition-colors hover:bg-[#2a2a2a]"
								>Hoàn Thành</button
							>
						</div>
					</div>

					<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
						<!-- Course Card 1 -->
						<div
							class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-purple-600 to-pink-600"
							>
								<span class="text-6xl">🤖</span>
								<span
									class="bg-secondary absolute top-4 right-4 rounded-full px-3 py-1 text-xs font-bold"
									>Đang Học</span
								>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Build AI-Powered Apps</h3>
								<p class="mb-4 text-sm text-gray-400">
									Học cách xây dựng ứng dụng AI với công nghệ hiện đại
								</p>
								<div class="mb-3">
									<div class="mb-1 flex justify-between text-sm">
										<span class="text-gray-400">Tiến độ</span>
										<span class="text-primary font-semibold">65%</span>
									</div>
									<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r transition-all duration-500"
											style="width: 65%"
										></div>
									</div>
								</div>
								<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
									<span>⏱️ 28/45 bài học</span>
									<span>🕐 12.5h/20h</span>
								</div>
								<button
									class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
								>
									Tiếp Tục Học
								</button>
							</div>
						</div>

						<!-- Course Card 2 -->
						<div
							class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-blue-600 to-cyan-600"
							>
								<span class="text-6xl">⚛️</span>
								<span
									class="absolute top-4 right-4 rounded-full bg-blue-500 px-3 py-1 text-xs font-bold"
									>MỚI</span
								>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">React 18 cho Người Mới</h3>
								<p class="mb-4 text-sm text-gray-400">Làm chủ React 18 với các dự án thực tế</p>
								<div class="mb-3">
									<div class="mb-1 flex justify-between text-sm">
										<span class="text-gray-400">Tiến độ</span>
										<span class="text-primary font-semibold">30%</span>
									</div>
									<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r transition-all duration-500"
											style="width: 30%"
										></div>
									</div>
								</div>
								<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
									<span>⏱️ 15/50 bài học</span>
									<span>🕐 6h/18h</span>
								</div>
								<button
									class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
								>
									Tiếp Tục Học
								</button>
							</div>
						</div>

						<!-- Course Card 3 -->
						<div
							class="overflow-hidden rounded-2xl border border-green-500/50 bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:border-green-500 hover:shadow-2xl hover:shadow-green-500/20"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-green-600 to-emerald-600"
							>
								<span class="text-6xl">🐍</span>
								<span
									class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
									>✓ Hoàn Thành</span
								>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Python Programming</h3>
								<p class="mb-4 text-sm text-gray-400">Từ cơ bản đến nâng cao với Python</p>
								<div class="mb-3">
									<div class="mb-1 flex justify-between text-sm">
										<span class="text-gray-400">Tiến độ</span>
										<span class="font-semibold text-green-500">100%</span>
									</div>
									<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="h-full rounded-full bg-green-500 transition-all duration-500"
											style="width: 100%"
										></div>
									</div>
								</div>
								<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
									<span>⏱️ 42/42 bài học</span>
									<span>🕐 25h/25h</span>
								</div>
								<button
									class="w-full rounded-xl bg-green-600 py-3 font-semibold transition-all duration-300 hover:scale-105 hover:bg-green-700"
								>
									Xem Lại Khóa Học
								</button>
							</div>
						</div>

						<!-- Course Card 4 -->
						<div
							class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-orange-600 to-red-600"
							>
								<span class="text-6xl">📱</span>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">React Native Essentials</h3>
								<p class="mb-4 text-sm text-gray-400">Xây dựng ứng dụng mobile đa nền tảng</p>
								<div class="mb-3">
									<div class="mb-1 flex justify-between text-sm">
										<span class="text-gray-400">Tiến độ</span>
										<span class="text-primary font-semibold">15%</span>
									</div>
									<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r transition-all duration-500"
											style="width: 15%"
										></div>
									</div>
								</div>
								<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
									<span>⏱️ 5/35 bài học</span>
									<span>🕐 3h/22h</span>
								</div>
								<button
									class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
								>
									Tiếp Tục Học
								</button>
							</div>
						</div>

						<!-- Course Card 5 -->
						<div
							class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-indigo-600 to-purple-600"
							>
								<span class="text-6xl">💻</span>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Clean Code Principles</h3>
								<p class="mb-4 text-sm text-gray-400">Viết code sạch, dễ bảo trì và mở rộng</p>
								<div class="mb-3">
									<div class="mb-1 flex justify-between text-sm">
										<span class="text-gray-400">Tiến độ</span>
										<span class="text-primary font-semibold">80%</span>
									</div>
									<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r transition-all duration-500"
											style="width: 80%"
										></div>
									</div>
								</div>
								<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
									<span>⏱️ 24/30 bài học</span>
									<span>🕐 16h/20h</span>
								</div>
								<button
									class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
								>
									Tiếp Tục Học
								</button>
							</div>
						</div>

						<!-- Course Card 6 -->
						<div
							class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-yellow-600 to-orange-600"
							>
								<span class="text-6xl">🎯</span>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">JavaScript Mastery</h3>
								<p class="mb-4 text-sm text-gray-400">Làm chủ JavaScript từ cơ bản đến nâng cao</p>
								<div class="mb-3">
									<div class="mb-1 flex justify-between text-sm">
										<span class="text-gray-400">Tiến độ</span>
										<span class="text-primary font-semibold">45%</span>
									</div>
									<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r transition-all duration-500"
											style="width: 45%"
										></div>
									</div>
								</div>
								<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
									<span>⏱️ 18/40 bài học</span>
									<span>🕐 11h/28h</span>
								</div>
								<button
									class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 w-full rounded-xl bg-gradient-to-r py-3 font-semibold transition-all duration-300 hover:scale-105"
								>
									Tiếp Tục Học
								</button>
							</div>
						</div>
					</div>
				</div>
			{/if}

			<!-- Learning Progress Tab -->
			{#if activeTab === 'progress'}
				<div class="tab-content">
					<div class="mb-6">
						<h2 class="text-3xl font-bold">Thống Kê Tiến Độ Học Tập</h2>
					</div>

					<div class="space-y-8">
						<!-- Overall Stats -->
						<div
							class="rounded-3xl border border-[#2a2a2a] bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] p-8"
						>
							<h3 class="mb-6 text-2xl font-bold">Tổng Quan</h3>
							<div class="grid grid-cols-2 gap-4 md:grid-cols-4">
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
								>
									<div class="text-primary mb-2 text-4xl font-bold">12</div>
									<div class="text-gray-400">Khóa Học Đã Mua</div>
								</div>
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
								>
									<div class="mb-2 text-4xl font-bold text-green-500">5</div>
									<div class="text-gray-400">Đã Hoàn Thành</div>
								</div>
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
								>
									<div class="mb-2 text-4xl font-bold text-blue-500">156h</div>
									<div class="text-gray-400">Thời Gian Học</div>
								</div>
								<div
									class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
								>
									<div class="mb-2 text-4xl font-bold text-yellow-500">52%</div>
									<div class="text-gray-400">Tiến Độ TB</div>
								</div>
							</div>
						</div>

						<!-- Course Progress Details -->
						<div class="rounded-3xl border border-[#2a2a2a] bg-[#1a1a1a] p-8">
							<h3 class="mb-6 text-2xl font-bold">Chi Tiết Từng Khóa Học</h3>

							<div class="space-y-6">
								<!-- Progress Item 1 -->
								<div
									class="hover:border-primary/30 rounded-2xl border border-[#2a2a2a] bg-[#0a0a0a] p-6 transition-colors"
								>
									<div class="mb-3 flex items-center justify-between">
										<div class="flex items-center space-x-3">
											<span class="text-3xl">🤖</span>
											<div>
												<h4 class="font-bold">Build AI-Powered Apps</h4>
												<p class="text-sm text-gray-400">28/45 bài học • 12.5h/20h</p>
											</div>
										</div>
										<span class="text-primary text-2xl font-bold">65%</span>
									</div>
									<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r"
											style="width: 65%"
										></div>
									</div>
									<div class="mt-3 flex justify-between text-sm text-gray-400">
										<span>Bắt đầu: 15/09/2024</span>
										<span>Cập nhật: 24/10/2024</span>
									</div>
								</div>

								<!-- Progress Item 2 -->
								<div
									class="hover:border-primary/30 rounded-2xl border border-[#2a2a2a] bg-[#0a0a0a] p-6 transition-colors"
								>
									<div class="mb-3 flex items-center justify-between">
										<div class="flex items-center space-x-3">
											<span class="text-3xl">⚛️</span>
											<div>
												<h4 class="font-bold">React 18 cho Người Mới</h4>
												<p class="text-sm text-gray-400">15/50 bài học • 6h/18h</p>
											</div>
										</div>
										<span class="text-primary text-2xl font-bold">30%</span>
									</div>
									<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r"
											style="width: 30%"
										></div>
									</div>
									<div class="mt-3 flex justify-between text-sm text-gray-400">
										<span>Bắt đầu: 01/10/2024</span>
										<span>Cập nhật: 23/10/2024</span>
									</div>
								</div>

								<!-- Progress Item 3 -->
								<div
									class="rounded-2xl border border-green-500/30 bg-[#0a0a0a] p-6 transition-colors hover:border-green-500/50"
								>
									<div class="mb-3 flex items-center justify-between">
										<div class="flex items-center space-x-3">
											<span class="text-3xl">🐍</span>
											<div>
												<h4 class="font-bold">Python Programming</h4>
												<p class="text-sm text-gray-400">42/42 bài học • 25h/25h</p>
											</div>
										</div>
										<span class="text-2xl font-bold text-green-500">100%</span>
									</div>
									<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div class="h-full rounded-full bg-green-500" style="width: 100%"></div>
									</div>
									<div class="mt-3 flex justify-between text-sm text-gray-400">
										<span>Bắt đầu: 20/07/2024</span>
										<span>Hoàn thành: 15/09/2024</span>
									</div>
								</div>

								<!-- Progress Item 4 -->
								<div
									class="hover:border-primary/30 rounded-2xl border border-[#2a2a2a] bg-[#0a0a0a] p-6 transition-colors"
								>
									<div class="mb-3 flex items-center justify-between">
										<div class="flex items-center space-x-3">
											<span class="text-3xl">📱</span>
											<div>
												<h4 class="font-bold">React Native Essentials</h4>
												<p class="text-sm text-gray-400">5/35 bài học • 3h/22h</p>
											</div>
										</div>
										<span class="text-primary text-2xl font-bold">15%</span>
									</div>
									<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r"
											style="width: 15%"
										></div>
									</div>
									<div class="mt-3 flex justify-between text-sm text-gray-400">
										<span>Bắt đầu: 10/10/2024</span>
										<span>Cập nhật: 20/10/2024</span>
									</div>
								</div>

								<!-- Progress Item 5 -->
								<div
									class="hover:border-primary/30 rounded-2xl border border-[#2a2a2a] bg-[#0a0a0a] p-6 transition-colors"
								>
									<div class="mb-3 flex items-center justify-between">
										<div class="flex items-center space-x-3">
											<span class="text-3xl">💻</span>
											<div>
												<h4 class="font-bold">Clean Code Principles</h4>
												<p class="text-sm text-gray-400">24/30 bài học • 16h/20h</p>
											</div>
										</div>
										<span class="text-primary text-2xl font-bold">80%</span>
									</div>
									<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r"
											style="width: 80%"
										></div>
									</div>
									<div class="mt-3 flex justify-between text-sm text-gray-400">
										<span>Bắt đầu: 05/08/2024</span>
										<span>Cập nhật: 22/10/2024</span>
									</div>
								</div>

								<!-- Progress Item 6 -->
								<div
									class="hover:border-primary/30 rounded-2xl border border-[#2a2a2a] bg-[#0a0a0a] p-6 transition-colors"
								>
									<div class="mb-3 flex items-center justify-between">
										<div class="flex items-center space-x-3">
											<span class="text-3xl">🎯</span>
											<div>
												<h4 class="font-bold">JavaScript Mastery</h4>
												<p class="text-sm text-gray-400">18/40 bài học • 11h/28h</p>
											</div>
										</div>
										<span class="text-primary text-2xl font-bold">45%</span>
									</div>
									<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
										<div
											class="from-primary to-secondary h-full rounded-full bg-gradient-to-r"
											style="width: 45%"
										></div>
									</div>
									<div class="mt-3 flex justify-between text-sm text-gray-400">
										<span>Bắt đầu: 25/08/2024</span>
										<span>Cập nhật: 24/10/2024</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			{/if}

			<!-- Purchased Courses Tab -->
			{#if activeTab === 'purchased'}
				<div class="tab-content">
					<div
						class="mb-6 flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center"
					>
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
									<span
										class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
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
									<span
										class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
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
									<span
										class="absolute top-4 right-4 rounded-full bg-green-500 px-3 py-1 text-xs font-bold"
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
			{/if}

			<!-- Certificates Tab -->
			{#if activeTab === 'certificates'}
				<div class="tab-content">
					<div class="mb-6">
						<h2 class="text-3xl font-bold">Chứng Chỉ Của Tôi</h2>
						<p class="text-gray-400">Chứng chỉ của bạn sau khi hoàn thành các khóa học</p>
					</div>

					<div class="grid gap-6 md:grid-cols-2 xl:grid-cols-3">
						<!-- Certificate 1 -->
						<div
							class="border-primary/50 hover:border-primary overflow-hidden rounded-2xl border-2 bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] transition-all duration-300 hover:scale-105"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-purple-600 to-pink-600"
							>
								<div class="text-center">
									<div class="mb-2 text-6xl">🏆</div>
									<div class="text-xl font-bold text-white">Certificate of Completion</div>
								</div>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Python Programming</h3>
								<p class="mb-4 text-sm text-gray-400">Hoàn thành ngày: 15/09/2024</p>
								<div class="mb-4 flex gap-2">
									<span class="rounded-full bg-green-500/20 px-3 py-1 text-xs text-green-400"
										>Verified</span
									>
									<span class="bg-primary/20 text-primary rounded-full px-3 py-1 text-xs"
										>Grade: A+</span
									>
								</div>
								<div class="flex gap-2">
									<button
										class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 flex-1 rounded-lg bg-gradient-to-r py-2 font-semibold transition-all hover:scale-105"
									>
										📥 Tải Xuống
									</button>
									<button
										class="flex-1 rounded-lg bg-[#1a1a1a] py-2 font-semibold transition-all hover:bg-[#2a2a2a]"
									>
										🔗 Chia Sẻ
									</button>
								</div>
							</div>
						</div>

						<!-- Certificate 2 -->
						<div
							class="border-primary/50 hover:border-primary overflow-hidden rounded-2xl border-2 bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] transition-all duration-300 hover:scale-105"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-blue-600 to-cyan-600"
							>
								<div class="text-center">
									<div class="mb-2 text-6xl">🏆</div>
									<div class="text-xl font-bold text-white">Certificate of Completion</div>
								</div>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">JavaScript Fundamentals</h3>
								<p class="mb-4 text-sm text-gray-400">Hoàn thành ngày: 05/08/2024</p>
								<div class="mb-4 flex gap-2">
									<span class="rounded-full bg-green-500/20 px-3 py-1 text-xs text-green-400"
										>Verified</span
									>
									<span class="bg-primary/20 text-primary rounded-full px-3 py-1 text-xs"
										>Grade: A</span
									>
								</div>
								<div class="flex gap-2">
									<button
										class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 flex-1 rounded-lg bg-gradient-to-r py-2 font-semibold transition-all hover:scale-105"
									>
										📥 Tải Xuống
									</button>
									<button
										class="flex-1 rounded-lg bg-[#1a1a1a] py-2 font-semibold transition-all hover:bg-[#2a2a2a]"
									>
										🔗 Chia Sẻ
									</button>
								</div>
							</div>
						</div>

						<!-- Certificate 3 -->
						<div
							class="border-primary/50 hover:border-primary overflow-hidden rounded-2xl border-2 bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] transition-all duration-300 hover:scale-105"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-green-600 to-emerald-600"
							>
								<div class="text-center">
									<div class="mb-2 text-6xl">🏆</div>
									<div class="text-xl font-bold text-white">Certificate of Completion</div>
								</div>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Web Development Basics</h3>
								<p class="mb-4 text-sm text-gray-400">Hoàn thành ngày: 22/07/2024</p>
								<div class="mb-4 flex gap-2">
									<span class="rounded-full bg-green-500/20 px-3 py-1 text-xs text-green-400"
										>Verified</span
									>
									<span class="bg-primary/20 text-primary rounded-full px-3 py-1 text-xs"
										>Grade: A+</span
									>
								</div>
								<div class="flex gap-2">
									<button
										class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 flex-1 rounded-lg bg-gradient-to-r py-2 font-semibold transition-all hover:scale-105"
									>
										📥 Tải Xuống
									</button>
									<button
										class="flex-1 rounded-lg bg-[#1a1a1a] py-2 font-semibold transition-all hover:bg-[#2a2a2a]"
									>
										🔗 Chia Sẻ
									</button>
								</div>
							</div>
						</div>

						<!-- Certificate 4 -->
						<div
							class="border-primary/50 hover:border-primary overflow-hidden rounded-2xl border-2 bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] transition-all duration-300 hover:scale-105"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-orange-600 to-red-600"
							>
								<div class="text-center">
									<div class="mb-2 text-6xl">🏆</div>
									<div class="text-xl font-bold text-white">Certificate of Completion</div>
								</div>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Git & GitHub Mastery</h3>
								<p class="mb-4 text-sm text-gray-400">Hoàn thành ngày: 10/07/2024</p>
								<div class="mb-4 flex gap-2">
									<span class="rounded-full bg-green-500/20 px-3 py-1 text-xs text-green-400"
										>Verified</span
									>
									<span class="bg-primary/20 text-primary rounded-full px-3 py-1 text-xs"
										>Grade: A</span
									>
								</div>
								<div class="flex gap-2">
									<button
										class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 flex-1 rounded-lg bg-gradient-to-r py-2 font-semibold transition-all hover:scale-105"
									>
										📥 Tải Xuống
									</button>
									<button
										class="flex-1 rounded-lg bg-[#1a1a1a] py-2 font-semibold transition-all hover:bg-[#2a2a2a]"
									>
										🔗 Chia Sẻ
									</button>
								</div>
							</div>
						</div>

						<!-- Certificate 5 -->
						<div
							class="border-primary/50 hover:border-primary overflow-hidden rounded-2xl border-2 bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] transition-all duration-300 hover:scale-105"
						>
							<div
								class="relative flex h-48 items-center justify-center bg-gradient-to-br from-indigo-600 to-purple-600"
							>
								<div class="text-center">
									<div class="mb-2 text-6xl">🏆</div>
									<div class="text-xl font-bold text-white">Certificate of Completion</div>
								</div>
							</div>
							<div class="p-6">
								<h3 class="mb-2 text-xl font-bold">Database Design</h3>
								<p class="mb-4 text-sm text-gray-400">Hoàn thành ngày: 28/06/2024</p>
								<div class="mb-4 flex gap-2">
									<span class="rounded-full bg-green-500/20 px-3 py-1 text-xs text-green-400"
										>Verified</span
									>
									<span class="bg-primary/20 text-primary rounded-full px-3 py-1 text-xs"
										>Grade: A+</span
									>
								</div>
								<div class="flex gap-2">
									<button
										class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 flex-1 rounded-lg bg-gradient-to-r py-2 font-semibold transition-all hover:scale-105"
									>
										📥 Tải Xuống
									</button>
									<button
										class="flex-1 rounded-lg bg-[#1a1a1a] py-2 font-semibold transition-all hover:bg-[#2a2a2a]"
									>
										🔗 Chia Sẻ
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			{/if}
		</div>
	</div>
</div>
