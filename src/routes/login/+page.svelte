<script>
	import logoUrl from '$lib/assets/logo.png';

	let { form } = $props();
</script>

<div
	class="dark bg-background flex min-h-svh flex-col items-center justify-center gap-6 p-6 text-gray-300 md:p-10"
>
	<div class="w-full max-w-sm">
		<div class="flex flex-col gap-6">
			<form method="POST" action="?/login">
				<div class="flex flex-col gap-6">
					<div class="flex flex-col items-center gap-2">
						<a href="/">
							<img src={logoUrl} alt="Logo" class="h-[32px] w-auto dark:hidden" />
							<img src={logoUrl} alt="Logo" class="hidden h-[32px] w-auto dark:block" />
						</a>

						<h1 class="my-3 text-3xl font-bold">Login to Firebits</h1>

						{#if form?.error}
							<div
								class="rounded-md border border-red-500/20 bg-red-500/10 p-3 text-center text-sm text-red-500"
							>
								{form.error}
							</div>
						{/if}

						<div class="text-center text-sm">
							Don't have an account? <a href="/signup" class="underline underline-offset-4"
								>Sign up</a
							>
						</div>
					</div>

					<div class="flex flex-col gap-6">
						<div class="grid gap-3">
							<label
								class="text-sm leading-none font-medium peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
								id="bits-c2"
								data-label-root=""
								for="email-c1">Email</label
							>
							<input
								class="placeholder:text-muted-foreground focus-visible:ring-ring focus:border-input ring-offset-background flex h-10 w-full rounded-md border border-[#ffffff1a] bg-[#0b0809] px-3 py-5 file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:ring-0 focus-visible:ring-offset-2 focus-visible:outline-none disabled:cursor-not-allowed disabled:opacity-50"
								id="email-c1"
								type="email"
								placeholder="m@example.com"
								name="email"
								required
							/>
						</div>

						<div class="grid gap-3">
							<label
								class="text-sm leading-none font-medium peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
								id="bits-c2"
								data-label-root=""
								for="password-c1">Password</label
							>
							<input
								class="placeholder:text-muted-foreground focus-visible:ring-ring focus:border-input ring-offset-background flex h-10 w-full rounded-md border border-[#ffffff1a] bg-[#0b0809] px-3 py-5 file:border-0 file:bg-transparent file:text-sm file:font-medium focus-visible:ring-0 focus-visible:ring-offset-2 focus-visible:outline-none disabled:cursor-not-allowed disabled:opacity-50"
								id="password-c1"
								type="password"
								placeholder="••••••••"
								name="password"
								required
							/>
						</div>

						<button
							class="ring-offset-background focus-visible:ring-ring [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:bg-violet-650 relative inline-flex w-full cursor-pointer items-center justify-center gap-2 rounded-full bg-violet-500 px-6 py-3 text-center font-medium whitespace-nowrap text-white transition-all duration-200 ease-out hover:text-white hover:no-underline focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50 md:font-semibold"
							type="submit">Login</button
						>
					</div>

					<div
						class="relative text-center text-sm after:absolute after:inset-0 after:top-1/2 after:z-0 after:flex after:items-center after:border-t after:border-[#ffffff1a]"
					>
						<span class="relative z-10 bg-[#0b0809] px-2 text-[#9f9fa9]">Or</span>
					</div>

					<div class="grid gap-4">
						<button
							class="focus-visible:ring-ring [&amp;_svg]:pointer-events-none [&amp;_svg]:size-4 [&amp;_svg]:shrink-0 hover:text-accent hover:border-accent relative inline-flex w-full cursor-pointer items-center justify-center gap-2 rounded-4xl border border-gray-500 px-6 py-3 font-medium whitespace-nowrap ring-offset-[#0b0809] transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none disabled:pointer-events-none disabled:opacity-50"
							type="button"
							><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								><path
									d="M12.48 10.92v3.28h7.84c-.24 1.84-.853 3.187-1.787 4.133-1.147 1.147-2.933 2.4-6.053 2.4-4.827 0-8.6-3.893-8.6-8.72s3.773-8.72 8.6-8.72c2.6 0 4.507 1.027 5.907 2.347l2.307-2.307C18.747 1.44 16.133 0 12.48 0 5.867 0 .307 5.387.307 12s5.56 12 12.173 12c3.573 0 6.267-1.173 8.373-3.36 2.16-2.16 2.84-5.213 2.84-7.667 0-.76-.053-1.467-.173-2.053H12.48z"
									fill="currentColor"
								></path></svg
							>
							Continue with Google
						</button>
					</div>
				</div>
			</form>
			<div
				class="text-center text-xs text-balance text-[#9f9fa9] *:[a]:underline *:[a]:underline-offset-4 *:[a]:hover:text-[#ffffff]"
			>
				By clicking continue, you agree to our <a href="##">Terms of Service</a> and
				<a href="##">Privacy Policy</a>.
			</div>
		</div>
	</div>
</div>
