<script lang="ts">
	import blankImage from '$lib/assets/blank.png';
	// Props
	export let member: any;

	export let courses: any = [];

	// Ensure courses is always an array
	$: safeCourses = Array.isArray(courses) ? courses : [];
</script>

<div class="tab-content">
	<div class="mb-6">
		<h2 class="text-3xl font-bold">Learning Progress Statistics</h2>
	</div>

	<div class="space-y-8">
		<!-- Overall Stats -->
		<div
			class="rounded-3xl border border-[#2a2a2a] bg-gradient-to-br from-[#1e1e1e] to-[#2d1b3d] p-8"
		>
			<h3 class="mb-6 text-2xl font-bold">Overview</h3>
			<div class="grid grid-cols-2 gap-4 md:grid-cols-4">
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
				>
					<div class="text-primary mb-2 text-4xl font-bold">{member?.purchased_courses || 0}</div>
					<div class="text-gray-400">Purchased Courses</div>
				</div>
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
				>
					<div class="mb-2 text-4xl font-bold text-green-500">{member?.course_completed || 0}</div>
					<div class="text-gray-400">Completed</div>
				</div>
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
				>
					<div class="mb-2 text-4xl font-bold text-blue-500">{member?.learn_time || 0}</div>
					<div class="text-gray-400">Study Time</div>
				</div>
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-6 text-center backdrop-blur-sm"
				>
					<div class="mb-2 text-4xl font-bold text-yellow-500">
						{Math.round(member?.average_score || 0)}
					</div>
					<div class="text-gray-400">Avg Score</div>
				</div>
			</div>
		</div>

		<!-- Course Progress Details -->
		<div class="rounded-3xl border border-[#2a2a2a] bg-[#1a1a1a] p-8">
			<h3 class="mb-6 text-2xl font-bold">Course Details</h3>

			<div class="space-y-6">
				{#if safeCourses.length > 0}
					{#each safeCourses as course}
						<!-- Progress Item -->
						<div
							class="rounded-2xl border border-green-500/30 bg-[#0a0a0a] p-6 transition-colors hover:border-green-500/50"
						>
							<div class="mb-3 flex items-center justify-between">
								<div class="flex items-center space-x-3">
									{#if course.image_url}
										<img
											src={course.image_url}
											alt={course.title || 'Course Thumbnail'}
											class="h-12 w-12 rounded-md object-cover"
										/>
									{:else}
										<img
											src={blankImage}
											alt="No Image Available"
											class="h-12 w-12 rounded-md bg-white object-cover"
										/>
									{/if}
									<div>
										<h4 class="font-bold">{course.title || 'No Title Available'}g</h4>
										<p class="text-sm text-gray-400">
											{course.completed_lessons || 0}/{course.number_of_lessons || 0} lessons • {course.time_progressed ||
												0}h/{course.time_required || 0}h
										</p>
									</div>
								</div>
								<span class="text-2xl font-bold text-green-500"
									>{Math.round(course.lesson_progress || 0)}%</span
								>
							</div>
							<div class="h-3 w-full overflow-hidden rounded-full bg-[#2a2a2a]">
								<div
									class="h-full rounded-full bg-green-500"
									style="width: {Math.round(course.lesson_progress || 0)}%"
								></div>
							</div>
							<!-- <div class="mt-3 flex justify-between text-sm text-gray-400">
								<span>Started: 20/07/2024</span>
								<span>Completed: 15/09/2024</span>
							</div> -->
						</div>
					{/each}
				{:else}
					<p class="text-gray-400">No course progress data available.</p>
				{/if}
			</div>
		</div>
	</div>
</div>
