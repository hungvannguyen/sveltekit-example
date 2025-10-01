<script>
	import Features1 from '$lib/assets/feature-01.webp';
	import Features2 from '$lib/assets/feature-02.webp';
	import Features3 from '$lib/assets/feature-03.webp';
	import Features4 from '$lib/assets/feature-04.webp';
	import Features5 from '$lib/assets/feature-05.webp';
	import Features6 from '$lib/assets/feature-06.webp';
	import SectionHeader from '$lib/components/SectionHeader.svelte';
	import SectionHeaderWithSubtitle from '$lib/components/SectionHeaderWithSubtitle.svelte';
	import FeatureItem from '$lib/components/FeatureItem.svelte';
	import StatCard from '$lib/components/StatCard.svelte';
	import Button from '$lib/components/Button.svelte';
</script>

<div>
	<section class="flex flex-col lg:my-5 lg:mb-10">
		<SectionHeader title="Build AI-Powered Apps" />

		<div class="container">
			<div class="flex flex-col items-center">
				<p class="mb-10 max-w-[50ch] text-center text-xl font-medium md:leading-9 lg:text-2xl">
					A brand-new course that shows you how to bring AI into your applications with modern tools
					and real projects.
				</p>

				<div class="mb-5 max-w-4xl">
					<video
						controls
						src="https://cdn.codewithmosh.com/video/upload/v1755631699/promo-videos/build-ai-powered-apps.mp4"
						poster="https://res.cloudinary.com/codewithmosh/image/upload/f_auto,q_auto/v1/covers/build-ai-powered-apps-teaser-cover"
					></video>
				</div>

				<a
					class="group text-md undefined inline-block rounded-full bg-pink-700 px-6 py-3 text-center font-medium text-white no-underline transition-all duration-200 ease-out hover:bg-pink-600 hover:text-white hover:no-underline md:font-semibold"
					role="button"
					href="/p"
				>
					Learn More
					<svg
						xmlns="http://www.w3.org/2000/svg"
						viewBox="0 0 24 24"
						fill="currentColor"
						aria-hidden="true"
						class="inline-block h-4 w-6 transition-all duration-200 ease-out group-hover:ml-3"
						><path
							fill-rule="evenodd"
							d="M12.97 3.97a.75.75 0 011.06 0l7.5 7.5a.75.75 0 010 1.06l-7.5 7.5a.75.75 0 11-1.06-1.06l6.22-6.22H3a.75.75 0 010-1.5h16.19l-6.22-6.22a.75.75 0 010-1.06z"
							clip-rule="evenodd"
						></path></svg
					>
				</a>
			</div>
		</div>
	</section>

	<div class="container">
		<section class="flex flex-col lg:my-5 lg:mb-10">
			<SectionHeaderWithSubtitle subtitle="Hello," title="I'm Mosh Hamedani." />

			<div class="flex flex-col items-center">
				<div class="transform-none opacity-100">
					<p class="max-w-[50ch] text-center text-lg font-medium md:text-2xl md:leading-9">
						I’ve spent 20+ years in software engineering, and my goal isn’t just to teach you to
						code — it’s to help you think like a professional software engineer, master
						problem-solving, and build skills you’ll use for life.
					</p>
				</div>

				<div class="mx-auto my-10 w-full max-w-[725px] px-3">
					<video
						controls=""
						src="https://cdn.codewithmosh.com/video/upload/v1735930863/promo-videos/mosh-intro.mp4"
						poster="https://res.cloudinary.com/codewithmosh/image/upload/f_auto,q_auto/v1/promo-videos/mosh-intro-poster"
					></video>
				</div>

				<div class="mb-10">
					<div class="mx-auto grid grid-cols-2 justify-center gap-4 md:grid-cols-4">
						<StatCard number="10M+" label="Students taught" color="#8e51ff" />
						<StatCard number="4M" label="YouTube fans" color="#00a63e" />
						<StatCard number="20+" label="Years of experience" color="#f6339a" />
						<StatCard number="52" label="Coding courses" color="#ff8904" />
					</div>
				</div>
			</div>
		</section>
	</div>

	<div class="relative overflow-hidden border-t-[1px] border-t-slate-700">
		<section class="flex flex-col lg:my-5 lg:mb-10">
			<SectionHeaderWithSubtitle
				subtitle="Why You'll Love Learning Here"
				title="Quality, Structure, and Real Results"
			/>
			<div class="container">
				<!-- Learning Benefits -->
				<FeatureItem
					icon={`<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="21" width="21" xmlns="http://www.w3.org/2000/svg"><path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm6.258-6.437a.5.5 0 0 1 .507.013l4 2.5a.5.5 0 0 1 0 .848l-4 2.5A.5.5 0 0 1 6 12V7a.5.5 0 0 1 .258-.437z"></path></svg>`}
					subtitle="A clear path to master coding"
					title="Perfectly Structured Courses"
					description="No more jumping between random YouTube tutorials. Follow a clear, logical path designed to build your skills step-by-step."
					image={Features2}
					imageAlt="Perfectly Structured Courses"
					imagePosition="right"
				/>

				<FeatureItem
					icon={`<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" height="25" width="25" xmlns="http://www.w3.org/2000/svg"><path d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm176.5 585.7l-28.6 39a7.99 7.99 0 0 1-11.2 1.7L483.3 569.8a7.92 7.92 0 0 1-3.3-6.5V288c0-4.4 3.6-8 8-8h48.1c4.4 0 8 3.6 8 8v247.5l142.6 103.1c3.6 2.5 4.4 7.5 1.8 11.1z"></path></svg>`}
					subtitle="Straightforward and to the point"
					title="Clear and Bite-Sized Lessons"
					description="Each lesson is focused and fluff-free, so you can make real progress—even with a busy schedule. Get exactly what you need without wasting a minute."
					image={Features1}
					imageAlt="Clear and Bite-Sized Lessons"
					imagePosition="left"
				/>

				<FeatureItem
					icon={`<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" height="25" width="25" xmlns="http://www.w3.org/2000/svg"><path d="M507.73 109.1c-2.24-9.03-13.54-12.09-20.12-5.51l-74.36 74.36-67.88-11.31-11.31-67.88 74.36-74.36c6.62-6.62 3.43-17.9-5.66-20.16-47.38-11.74-99.55.91-136.58 37.93-39.64 39.64-50.55 97.1-34.05 147.2L18.74 402.76c-24.99 24.99-24.99 65.51 0 90.5 24.99 24.99 65.51 24.99 90.5 0l213.21-213.21c50.12 16.71 107.47 5.68 147.37-34.22 37.07-37.07 49.7-89.32 37.91-136.73zM64 472c-13.25 0-24-10.75-24-24 0-13.26 10.75-24 24-24s24 10.74 24 24c0 13.25-10.75 24-24 24z"></path></svg>`}
					subtitle="Deep understanding, not just shortcuts"
					title="More than Just Code"
					description="I go beyond the 'what' and show you the 'why' and 'how' behind every concept, so you can code with real understanding."
					image={Features3}
					imageAlt="More than Just Code"
					imagePosition="right"
				/>

				<FeatureItem
					icon={`<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="25" width="25" xmlns="http://www.w3.org/2000/svg"><path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855A7.97 7.97 0 0 0 5.145 4H7.5V1.077zM4.09 4a9.267 9.267 0 0 1 .64-1.539 6.7 6.7 0 0 1 .597-.933A7.025 7.025 0 0 0 2.255 4H4.09zm-.582 3.5c.03-.877.138-1.718.312-2.5H1.674a6.958 6.958 0 0 0-.656 2.5h2.49zM4.847 5a12.5 12.5 0 0 0-.338 2.5H7.5V5H4.847zM8.5 5v2.5h2.99a12.495 12.495 0 0 0-.337-2.5H8.5zM4.51 8.5a12.5 12.5 0 0 0 .337 2.5H7.5V8.5H4.51zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5H8.5zM5.145 12c.138.386.295.744.468 1.068.552 1.035 1.218 1.65 1.887 1.855V12H5.145zm.182 2.472a6.696 6.696 0 0 1-.597-.933A9.268 9.268 0 0 1 4.09 12H2.255a7.024 7.024 0 0 0 3.072 2.472zM3.82 11a13.652 13.652 0 0 1-.312-2.5h-2.49c.062.89.291 1.733.656 2.5H3.82zm6.853 3.472A7.024 7.024 0 0 0 13.745 12H11.91a9.27 9.27 0 0 1-.64 1.539 6.688 6.688 0 0 1-.597.933zM8.5 12v2.923c.67-.204 1.335-.82 1.887-1.855.173-.324.33-.682.468-1.068H8.5zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.65 13.65 0 0 1-.312 2.5zm2.802-3.5a6.959 6.959 0 0 0-.656-2.5H12.18c.174.782.282 1.623.312 2.5h2.49zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7.024 7.024 0 0 0-3.072-2.472c.218.284.418.598.597.933zM10.855 4a7.966 7.966 0 0 0-.468-1.068C9.835 1.897 9.17 1.282 8.5 1.077V4h2.355z"></path></svg>`}
					subtitle="Get ready for real-world work"
					title="Hands-on Projects You'll Love"
					description="We'll build real-world projects together, giving you the confidence to tackle real challenges on the job."
					image={Features4}
					imageAlt="Hands-on Projects You'll Love"
					imagePosition="left"
				/>

				<FeatureItem
					icon={`<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 640 512" height="25" width="25" xmlns="http://www.w3.org/2000/svg"><path d="M96 224c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm448 0c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm32 32h-64c-17.6 0-33.5 7.1-45.1 18.6 40.3 22.1 68.9 62 75.1 109.4h66c17.7 0 32-14.3 32-32v-32c0-35.3-28.7-64-64-64zm-256 0c61.9 0 112-50.1 112-112S381.9 32 320 32 208 82.1 208 144s50.1 112 112 112zm76.8 32h-8.3c-20.8 10-43.9 16-68.5 16s-47.6-6-68.5-16h-8.3C179.6 288 128 339.6 128 403.2V432c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48v-28.8c0-63.6-51.6-115.2-115.2-115.2zm-223.7-13.4C161.5 263.1 145.6 256 128 256H64c-35.3 0-64 28.7-64 64v32c0 17.7 14.3 32 32 32h65.9c6.3-47.4 34.9-87.3 75.2-109.4z"></path></svg>`}
					subtitle="Decades of coding, shared with you"
					title="Built on 20+ Years of Experience"
					description="With over two decades in the industry, I've seen it all. I'll share insights and lessons that you won't find in any textbook."
					image={Features5}
					imageAlt="Built on 20+ Years of Experience"
					imagePosition="right"
				/>

				<FeatureItem
					icon={`<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="25" width="25" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M15.67 7.066l-1.08-1.34a1.5 1.5 0 0 1-.309-.77l-.19-1.698a1.51 1.51 0 0 0-1.329-1.33l-1.699-.19c-.3-.03-.56-.159-.78-.329L8.945.33a1.504 1.504 0 0 0-1.878 0l-1.34 1.08a1.5 1.5 0 0 1-.77.31l-1.698.19c-.7.08-1.25.63-1.33 1.329l-.19 1.699c-.03.3-.159.56-.329.78L.33 7.055a1.504 1.504 0 0 0 0 1.878l1.08 1.34c.17.22.28.48.31.77l.19 1.698c.08.7.63 1.25 1.329 1.33l1.699.19c.3.03.56.159.78.329l1.339 1.08c.55.439 1.329.439 1.878 0l1.34-1.08c.22-.17.48-.28.77-.31l1.698-.19c.7-.08 1.25-.63 1.33-1.329l.19-1.699c.03-.3.159-.56.329-.78l1.08-1.339a1.504 1.504 0 0 0 0-1.878zM6.5 12.01L3 8.51l1.5-1.5 2 2 5-5L13 5.56l-6.5 6.45z"></path></svg>`}
					subtitle="Join a global community of learners"
					title="Trusted by Millions"
					description="#1 ranked tutorials on YouTube, trusted by millions for their clarity and depth."
					image={Features6}
					imageAlt="Trusted by Millions"
					imagePosition="left"
				/>
			</div>
		</section>
	</div>

	<div class="container">
		<section class="flex flex-col lg:my-5 lg:mb-10">
			<SectionHeaderWithSubtitle
				subtitle="Recognized by Professionals"
				title="Trusted by Employees at Leading Companies"
			/>

			<div class="flex flex-col items-center" style="opacity: 1; transform: none;">
				<p
					class="mb-10 max-w-[50ch] text-center text-lg lg:text-xl lg:leading-8"
					style="opacity: 1; transform: none;"
				>
					My courses are used by professionals from top companies like <span class="text-white"
						>Microsoft, Amazon, and Google,</span
					> helping them sharpen their skills and stay ahead in their fields.
				</p>
				<div style="opacity: 1; transform: none;">
					<div class="flex flex-col gap-5 md:flex-row">
						<Button text="Browse Courses" href="/courses" variant="violet" />
						<Button
							text="Join for Free"
							href="https://sso.teachable.com/secure/146684/identity/sign_up"
							variant="pink"
						/>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
