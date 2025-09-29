<script>
	import logoUrl from '$lib/assets/logo.png';
</script>

<header class="sticky top-0 z-50 w-full bg-black/80 text-[#7f7f7f] backdrop-blur-md">
	<div class="mx-auto flex max-w-7xl items-center justify-between px-3 py-2 md:py-4 lg:px-6">
		<a href="/">
			<img src={logoUrl} alt="Logo" class="h-[32px] w-auto" />
		</a>

		<nav class="hidden flex-1 items-center justify-center gap-2 md:flex">
			<div class="flex gap-2">
				<a
					href="/"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap text-gray-500 transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0"
				>
					Courses
				</a>
				<a
					href="/"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap text-gray-500 transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0"
				>
					Learning Paths
				</a>

				<a
					href="/"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap text-gray-500 transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0"
				>
					Lifetime Access
				</a>

				<a
					href="/"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap text-gray-500 transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0"
				>
					Forum
				</a>

				<a
					href="/"
					class="ring-offset-background focus-visible:ring-ring data-[active=true]:text-accent relative inline-flex cursor-pointer items-center justify-center gap-2 rounded-4xl px-3 py-1 font-medium tracking-normal whitespace-nowrap text-gray-500 transition-colors duration-300 hover:text-gray-300 focus:text-white focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 dark:hover:text-white [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0"
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
	</div>
</header>
