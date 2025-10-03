<script>
	import MoneyBack from '$lib/assets/money-back.svg';
	import SectionHeaderWithSubtitle from '$lib/components/SectionHeaderWithSubtitle.svelte';
	import PricingCard from '$lib/components/PricingCard.svelte';
	import FAQItem from '$lib/components/FAQItem.svelte';
	import ReviewCard from '$lib/components/ReviewCard.svelte';
</script>

<main class="flex flex-grow flex-col py-4 pt-20">
	<div class="relative">
		<div class="container mb-6 flex flex-col items-center text-center md:my-6 lg:my-10">
			<div
				class="text-md mb-3 inline-block bg-gradient-to-r from-[#7c3aed] to-[#e879f9] bg-clip-text font-medium text-transparent md:font-semibold"
			>
				One payment. Lifetime Access.
			</div>

			<h1 class="mb-8 text-4xl leading-[1.2] lg:text-5xl">Own All My Courses, Forever</h1>

			<p class="max-w-prose text-lg !leading-[1.6] lg:text-2xl">
				Pay once. Get lifetime access to 50+ coding courses designed to make you a real-world
				developer. No subscriptions. No recurring charges. Just practical, job-focused learning —
				yours to keep, forever.
			</p>
		</div>
	</div>

	<div class="container">
		<div class="flex flex-col items-center gap-10">
			<div class="flex w-full flex-wrap justify-around gap-3">
				<PricingCard
					title="Get VIP 1"
					description="All current and future courses — one payment."
					price="$100.00"
					taxNote="🇻🇳 You'll be charged $100.00 + tax"
					buttonText="Unlock All Courses"
					buttonHref="https://sso.teachable.com/secure/146684/checkout/6297839/all-access-1?coupon_code=EXPIRED"
					disclaimer="No recurring fees — ever."
					showBadge={true}
					badgeText="best"
					features={[
						{ text: '10+ premium courses worth $1,850+' },
						{ text: '330 hours of HD video' },
						{ text: 'Downloadable content' },
						{ text: 'Early access to new courses' },
						{ text: 'Help shape future course topics' }
					]}
				/>

				<PricingCard
					title="Get VIP 2"
					description="All current and future courses — one payment."
					price="$300.00"
					taxNote="🇻🇳 You'll be charged $300.00 + tax"
					buttonText="Unlock All Courses"
					buttonHref="https://sso.teachable.com/secure/146684/checkout/6297839/all-access-1?coupon_code=EXPIRED"
					disclaimer="No recurring fees — ever."
					features={[
						{ text: 'All VIP 1 included' },
						{ text: '50+ more premium courses worth $4,850+' },
						{ text: '330 hours of HD video' },
						{ text: 'Lifetime access' },
						{ text: 'More downloadable content' }
					]}
				/>
			</div>

			<div class="flex flex-col items-center text-center">
				<h2>Try It, Risk-Free</h2>
				<p class="mt-4 mb-8 max-w-xl text-lg md:text-xl">
					I’m confident you’ll love the courses in your subscription. But if it’s not the right fit,
					no worries! Get a refund within 30 days — no questions asked.
				</p>
				<img
					alt="Money-back guarantee"
					data-testid="guarantee"
					loading="lazy"
					width="130"
					height="129"
					decoding="async"
					data-nimg="1"
					src={MoneyBack}
					style="color: transparent;"
				/>
			</div>

			<div class="flex max-w-prose flex-col items-center text-center">
				<section class="flex flex-col lg:my-5 lg:mb-10">
					<header class="my-12 mb-6 text-center">
						<p
							class="text-md from-violet-70 to-pink-650 my-4 inline-block bg-gradient-to-r bg-clip-text font-semibold tracking-wide text-transparent"
						>
							Real Results, Real Stories
						</p>
						<h2 class="text-4xl leading-[1.2]">Why Members Love Learning Here</h2>
					</header>
					<div class="mb-10 flex flex-col items-center gap-2 md:flex-row md:justify-center">
						<div class="flex">
							<span class="mr-1 text-lg font-bold text-gray-100">Excellent</span><span
								class="mx-2 flex items-center"
								><img
									alt="Stars"
									data-testid="trust-stars"
									fetchpriority="high"
									width="90"
									height="30"
									decoding="async"
									data-nimg="1"
									class="inline"
									src="/images/4.5.fbc139f3.svg"
									style="color: transparent;"
								/></span
							>
						</div>
						<div>
							<span class="mr-1 font-bold">4.7</span>out of 5 based on
							<a target="_blank" href="https://www.trustpilot.com/review/codewithmosh.com"
								><span class="font-bold">6556</span> reviews</a
							>
						</div>
					</div>
					<p class="max-w-[50ch] text-center text-lg font-medium md:text-2xl md:leading-9">
						Don’t just take my word for it—see how members are leveling up their skills and landing
						dream jobs with full access to every course.
					</p>
					<div class="mt-10 text-left">
						<ul class="flex flex-col gap-4">
							<!-- Reviews list -->
							<ReviewCard
								name="Fred Lackey"
								avatar="/images/fred_lackey.webp"
								rating={5}
								review="Been recommending Mosh for years... probably a decade by now. I've lost count of how many developers and business people I have shared one of his videos with. Not much to say other than he's one of the best instructors out there. Great personality for teaching and a solid mastery of the subject matter. He's always going to be my first stop for learning something new."
							/>

							<ReviewCard
								name="David Roberts"
								rating={5}
								review={[
									'Mosh helped me land a job as as a Mobile software engineer',
									"I'm a self taught software engineer. During this period of study I completed many courses, trying to emulate a computer science education. Mosh's courses helped me all the way and the ones I continue coming back to and referencing as a professional software engineer.",
									"I already held a degree and didn't want to incure the cost of going to college again. I'm also pretty motivated, so Mosh's structured courses worked well for me.",
									'May courses will teach you a framework or technology, but these are highly perishable skills. Mosh will teach you to think like a software engineer and load you with the correct fundamentals that will give you confidence when you get in the workplace.',
									'Thanks for everything Mosh!'
								]}
							/>

							<ReviewCard
								name="Muhammad Usman Ghani"
								rating={5}
								review="I started learning from Mosh years back when I didn't even know the ABCs of programming. Now I'm a data engineer and still come to his courses every now and then. I can't thank him enough for the incredible impact his courses and exceptional teaching methods have had on my journey in programming."
							/>

							<ReviewCard
								name="Virginia Castillo"
								avatar="/images/virginia_castillo.png"
								rating={5}
								review={[
									'The best investment I have ever made',
									"Mosh is an outstanding teacher. His lessons are easy to learn and can be followed at your own pace, making them incredibly convenient. I've been learning from him for over four years, and the growth in my professional career has been remarkable. It's totally worth it. I am incredibly thankful to have found him."
								]}
							/>

							<ReviewCard
								name="Tejasvi Kalburgi"
								avatar="/images/tejasvi_kalburgi.png"
								rating={5}
								review={[
									'Mosh comes up with the best, well-structured and informative courses as always. I have seen most of his YouTube videos in his channel and he is the main reason I fell in love with programming. Mosh not only teaches you the concepts, but also points out what it takes to be a professional developer that makes one stand out. I highly recommend his courses to all.',
									'Thank you so much, Mosh'
								]}
							/>
						</ul>
						<button
							class="group bg-gray-450 mt-4 inline-block rounded-full px-3 py-1 text-center text-sm font-medium text-white no-underline transition-all duration-200 ease-out hover:bg-gray-500 hover:text-white hover:no-underline md:font-semibold"
							type="submit">Show More</button
						>
					</div>
				</section>
			</div>

			<div class="flex flex-col items-center text-center">
				<section class="flex flex-col lg:my-5 lg:mb-10">
					<SectionHeaderWithSubtitle
						subtitle="Need More Details?"
						title="Frequently-Asked Questions"
					/>
					<ul class="mt-5 mb-8 max-w-prose text-left">
						<FAQItem
							question="What’s included with Lifetime Access?"
							answer="With Lifetime Access, you get immediate access to all current courses and all future releases—forever. Pay once, and you'll never need to pay again."
						/>
						<FAQItem
							question="What’s the difference between buying a single course and getting Lifetime Access?"
							answer="Buying a single course gives you lifetime access to just that course. Lifetime
								Access unlocks everything I’ve ever created—and everything I’ll release in the
								future—with a single payment."
						/>
						<FAQItem
							question="Is there a money-back guarantee?"
							answer="Yes, we offer a 30-day money-back guarantee. If you’re not satisfied, just contact
								us within 30 days of purchase and you’ll receive a full refund—no questions asked."
						/>
						<FAQItem
							question="Can I download the courses?"
							answer="Yes. You can download all videos and resources to learn offline or revisit them
								anytime. Everything is yours to keep."
						/>
						<FAQItem
							question="Do I receive certificates for completed courses??"
							answer="Yes, you’ll receive a certificate of completion for each course you finish, perfect
								for showcasing your new skills."
						/>
						<FAQItem
							question="How often are new courses added?"
							answer="I typically release 3 to 4 high-quality courses per year, focused on the most in-demand technologies and skills. When you get Lifetime Access, you’ll automatically receive every future course at no extra cost—no subscriptions, no hidden fees."
						/>
						<FAQItem
							question="Is this suitable for beginners?"
							answer="Yes! Whether you’re just starting out or looking to deepen your knowledge, the courses are designed to guide you every step of the way."
						/>
					</ul>
				</section>
			</div>
		</div>
	</div>
</main>
