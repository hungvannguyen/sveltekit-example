<script lang="ts">
	import { page } from '$app/stores';
	import logoUrl from '$lib/assets/logo.png';

	let mobileMenuOpen = false;

	function toggleMobileMenu() {
		mobileMenuOpen = !mobileMenuOpen;
	}

	function isActive(href: string) {
		if (href === '/') {
			return $page.url.pathname === '/';
		}
		return $page.url.pathname.startsWith(href);
	}
</script>

<header class="sticky top-0 z-50 w-full bg-black/80 text-[#7f7f7f] backdrop-blur-md">
	<div class="mx-auto flex max-w-7xl items-center justify-between px-3 py-2 md:py-4 lg:px-6">
		<a href="/">
			<img src={logoUrl} alt="Logo" class="h-[32px] w-auto" />
		</a>

		<nav class="hidden flex-1 items-center justify-center gap-2 md:flex">
			<div class="flex gap-2">
				<a
					href="/courses"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 {isActive(
						'/courses'
					)
						? 'text-white'
						: 'text-[#7f7f7f]'}"
				>
					Courses
				</a>
				<a
					href="/all-access"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 {isActive(
						'/all-access'
					)
						? 'text-white'
						: 'text-[#7f7f7f]'}"
				>
					Learning Paths
				</a>

				<a
					href="/lifetime-access"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 {isActive(
						'/lifetime-access'
					)
						? 'text-white'
						: 'text-[#7f7f7f]'}"
				>
					Lifetime Access
				</a>

				<a
					href="/forum"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 {isActive(
						'/forum'
					)
						? 'text-white'
						: 'text-[#7f7f7f]'}"
				>
					Forum
				</a>

				<a
					href="/contact"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 {isActive(
						'/contact'
					)
						? 'text-white'
						: 'text-[#7f7f7f]'}"
				>
					Contact
				</a>
			</div>
		</nav>

		<a
			href="/"
			class="block rounded-3xl bg-white px-3 py-1 no-underline outline-none hover:bg-gray-300 hover:no-underline"
		>
			<div class="text-base tracking-normal text-black transition-colors duration-300">
				Members Area
			</div>
		</a>

		<!-- Mobile menu -->
		<div class="flex md:hidden">
			<!-- Mobile menu button -->
			<button
				class="ring-offset-background focus-visible:ring-ring hover:text-accent hover:border-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl border border-gray-500 p-2 font-medium whitespace-nowrap transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0"
				aria-haspopup="menu"
				aria-label="Toggle menu"
				aria-expanded={mobileMenuOpen ? 'true' : 'false'}
				data-state={mobileMenuOpen ? 'open' : 'closed'}
				type="button"
				on:click={toggleMobileMenu}
			>
				<svg
					width="24"
					height="24"
					viewBox="0 0 24 24"
					xmlns="http://www.w3.org/2000/svg"
					class="[&amp;_line]:stroke-2 [&amp;_line]:transition-all [&amp;_line]:duration-300 [&amp;_line]:ease-[cubic-bezier(0.4,0,0.2,1)] icon text-white"
					stroke-linecap="round"
					><line
						class="origin-center data-[open=true]:translate-x-[-3px] data-[open=true]:translate-y-[4px] data-[open=true]:rotate-45"
						x1="0"
						y1="6"
						x2="24"
						y2="6"
						data-open={mobileMenuOpen ? 'true' : 'false'}
					></line><line
						class="data-[open=true]:opacity-0"
						x1="0"
						y1="12"
						x2="24"
						y2="12"
						data-open={mobileMenuOpen ? 'true' : 'false'}
					></line><line
						class="origin-center data-[open=true]:translate-x-[-3px] data-[open=true]:-translate-y-[4px] data-[open=true]:-rotate-45"
						x1="0"
						y1="18"
						x2="24"
						y2="18"
						data-open={mobileMenuOpen ? 'true' : 'false'}
					></line></svg
				></button
			>

			{#if mobileMenuOpen}
				<!-- Mobile menu menu -->
				<div
					id="bits-13"
					data-bits-floating-content-wrapper=""
					dir="ltr"
					class="fixed top-0 left-0 z-50 min-w-max translate-y-[50px]"
				>
					<div
						forcemount="false"
						class="rounded-0 poiter-events-auto top-full z-50 h-screen w-screen max-w-full overflow-hidden bg-[#0b0809] p-3 shadow-md"
						role="menu"
						aria-orientation="vertical"
						data-dropdown-menu-content=""
						data-state="open"
						data-side="bottom"
						data-align="center"
						tabindex="-1"
					>
						<div
							class="w-full !bg-transparent p-3"
							id="bits-c32"
							tabindex="-1"
							role="menuitem"
							aria-disabled="false"
							data-dropdown-menu-item=""
						>
							<a
								class="font-heading data-[active=true]:text-accent block w-full font-bold text-gray-400 hover:text-gray-100 focus:outline-0"
								href="/courses"
								data-active="false">Courses</a
							>
						</div>

						<div
							class="w-full !bg-transparent p-3"
							id="bits-c33"
							tabindex="-1"
							role="menuitem"
							aria-disabled="false"
							data-dropdown-menu-item=""
						>
							<a
								class="font-heading data-[active=true]:text-accent block w-full font-bold text-gray-400 hover:text-gray-100 focus:outline-0"
								href="learning-paths"
								data-active="false">Learning Paths</a
							>
						</div>

						<div
							class="w-full !bg-transparent p-3"
							id="bits-c34"
							tabindex="-1"
							role="menuitem"
							aria-disabled="false"
							data-dropdown-menu-item=""
						>
							<a
								class="font-heading data-[active=true]:text-accent block w-full font-bold text-gray-400 hover:text-gray-100 focus:outline-0"
								href="all-access"
								data-active="false">Lifetime Access</a
							>
						</div>

						<div
							class="w-full !bg-transparent p-3"
							id="bits-c35"
							tabindex="-1"
							role="menuitem"
							aria-disabled="false"
							data-dropdown-menu-item=""
						>
							<a
								class="font-heading data-[active=true]:text-accent block w-full font-bold text-gray-400 hover:text-gray-100 focus:outline-0"
								href="https://forum.codewithmosh.com/"
								data-active="false">Forum</a
							>
						</div>

						<div
							class="w-full !bg-transparent p-3"
							id="bits-c36"
							tabindex="-1"
							role="menuitem"
							aria-disabled="false"
							data-dropdown-menu-item=""
						>
							<a
								class="font-heading data-[active=true]:text-accent block w-full font-bold text-gray-400 hover:text-gray-100 focus:outline-0"
								href="/contact"
								data-active="false">Contact</a
							>
						</div>
					</div>
				</div>
			{/if}
		</div>
	</div>
</header>
