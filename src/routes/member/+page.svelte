<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';

	// Import tab components
	import ProfileTab from '$lib/components/member/ProfileTab.svelte';
	import CoursesTab from '$lib/components/member/CoursesTab.svelte';
	import ProgressTab from '$lib/components/member/ProgressTab.svelte';
	import PurchasedTab from '$lib/components/member/PurchasedTab.svelte';
	import CertificatesTab from '$lib/components/member/CertificatesTab.svelte';

	// Import data từ page.server.ts
	export let data;
	$: ({ member } = data);
	$: ({ courses } = data);
	$: ({ certificates } = data);

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
					<h2 class="text-xl font-bold text-white">Account</h2>
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
						Profile
					</button>
					<button
						class="sidebar-tab {activeTab === 'courses'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('courses')}
					>
						<span class="text-lg">📚</span>
						My Courses
					</button>
					<button
						class="sidebar-tab {activeTab === 'progress'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('progress')}
					>
						<span class="text-lg">📊</span>
						Learning Progress
					</button>
					<button
						class="sidebar-tab {activeTab === 'purchased'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('purchased')}
					>
						<span class="text-lg">💳</span>
						Purchased Courses
					</button>
					<button
						class="sidebar-tab {activeTab === 'certificates'
							? 'active from-primary to-secondary border-primary/50 bg-gradient-to-r text-white'
							: 'border-transparent text-gray-400 hover:bg-[#2a2a2a] hover:text-white'} flex w-full items-center gap-3 rounded-xl border px-4 py-3 text-left text-sm font-medium transition-all duration-300"
						on:click={() => switchTab('certificates')}
					>
						<span class="text-lg">🏆</span>
						Certificates
					</button>
				</nav>
			</div>
		</div>

		<!-- Content Area -->
		<div class="min-w-0 flex-1">
			<!-- Profile Tab -->
			{#if activeTab === 'profile'}
				<ProfileTab {member} />
			{/if}

			<!-- My Courses Tab -->
			{#if activeTab === 'courses'}
				<CoursesTab {courses} />
			{/if}

			<!-- Learning Progress Tab -->
			{#if activeTab === 'progress'}
				<ProgressTab {member} {courses} />
			{/if}

			<!-- Purchased Courses Tab -->
			{#if activeTab === 'purchased'}
				<PurchasedTab {member} />
			{/if}

			<!-- Certificates Tab -->
			{#if activeTab === 'certificates'}
				<CertificatesTab {certificates} />
			{/if}
		</div>
	</div>
</div>
