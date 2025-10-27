<script lang="ts">
	import blankImage from '$lib/assets/blank.png';
	// Props
	export let courses: any = [];

	// Ensure courses is always an array
	$: safeCourses = Array.isArray(courses) ? courses : [];
</script>

<div class="tab-content">
	<div class="mb-6 flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center">
		<h2 class="text-3xl font-bold">My Courses</h2>
		<div class="flex gap-2">
			<button
				class="bg-primary/20 text-primary border-primary/30 hover:bg-primary/30 rounded-lg border px-4 py-2 transition-colors"
				>All</button
			>
			<button
				class="rounded-lg bg-[#1a1a1a] px-4 py-2 text-gray-400 transition-colors hover:bg-[#2a2a2a]"
				>In Progress</button
			>
			<button
				class="rounded-lg bg-[#1a1a1a] px-4 py-2 text-gray-400 transition-colors hover:bg-[#2a2a2a]"
				>Completed</button
			>
		</div>
	</div>

	{#if safeCourses.length > 0}
		<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
			{#each safeCourses as course}
				<!-- Course Card -->
				<div
					class="hover:border-primary/50 hover:shadow-primary/20 overflow-hidden rounded-2xl border border-[#2a2a2a] bg-[#1a1a1a] transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl"
				>
					<div
						class="relative flex h-48 items-center justify-center bg-gradient-to-br from-purple-600 to-pink-600"
					>
						{#if course.image_url}
							<img
								src={course.image_url}
								alt={course.title || 'Course Thumbnail'}
								class="h-full w-full rounded-md object-cover"
							/>
						{:else}
							<img
								src={blankImage}
								alt="No Image Available"
								class="h-32 w-32 rounded-md object-cover"
							/>
						{/if}

						{#if Math.round(course.lesson_progress || 0) < 100}
							<span
								class="bg-secondary absolute top-4 right-4 rounded-full px-3 py-1 text-xs font-bold"
								>In Progress</span
							>
						{:else}
							<span
								class="bg-secondary absolute top-4 right-4 rounded-full px-3 py-1 text-xs font-bold"
								>Completed</span
							>
						{/if}
					</div>

					<div class="p-6">
						<h3 class="mb-2 text-lg font-bold">{course.title || 'No Title Available'}</h3>
						<p class="mb-4 text-sm text-gray-400">
							{course.description || 'Course description will be updated soon'}
						</p>
						<div class="mb-3">
							<div class="mb-1 flex justify-between text-sm">
								<span class="text-gray-400">Progress</span>
								<span class="text-primary font-semibold"
									>{Math.round(course.lesson_progress || 0)}%</span
								>
							</div>

							<div class="h-2 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
								<div
									class="h-full rounded-full bg-gradient-to-r from-blue-500 to-purple-600 transition-all duration-500"
									style="width: {Math.max(
										2,
										Math.round(course.lesson_progress || 0)
									)}%; min-width: 2px;"
								></div>
							</div>
						</div>
						<div class="mb-4 flex items-center justify-between text-sm text-gray-400">
							<span>⏱️ {course.completed_lessons || 0}/{course.number_of_lessons || 0} lessons</span
							>
							<span>🕐 {course.time_progressed || 0}h/{course.time_required || 0}h</span>
						</div>

						{#if Math.round(course.lesson_progress || 0) < 100}
							<a
								href="#"
								class="hover:from-primary/90 hover:to-secondary/90 mx-auto block w-full cursor-pointer rounded-xl bg-gradient-to-r from-green-400 to-green-600 px-3 py-3 text-center font-semibold transition-all duration-300 hover:scale-105"
							>
								Continue Learning
							</a>
						{:else}
							<a
								href="#"
								class="mx-auto block w-full cursor-pointer rounded-xl bg-gradient-to-r from-gray-400 to-gray-600 py-3 text-center font-semibold text-white transition-all duration-300 hover:scale-105"
							>
								Review Course
							</a>
						{/if}
					</div>
				</div>
			{/each}
		</div>
	{:else}
		<!-- Empty State -->
		<div class="flex flex-col items-center justify-center py-12 text-center">
			<div class="mb-4 text-6xl opacity-50">📚</div>
			<h3 class="mb-2 text-xl font-semibold text-gray-300">No courses yet</h3>
			<p class="text-gray-500">
				You haven't enrolled in any courses yet. Explore our courses and start learning!
			</p>
			<button
				class="from-primary to-secondary mt-4 rounded-xl bg-gradient-to-r px-6 py-3 font-semibold transition-all duration-300 hover:scale-105"
			>
				Explore Courses
			</button>
		</div>
	{/if}
</div>
