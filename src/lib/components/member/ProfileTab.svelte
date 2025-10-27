<script lang="ts">
	export let member: any;

	function saveProfile() {
		// TODO: Implement save profile functionality
		alert('Thông tin đã được lưu!');
	}
</script>

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
						class="from-primary to-secondary border-primary/50 flex h-32 w-32 items-center justify-center rounded-full border-4 bg-gradient-to-br"
					>
						{#if member?.avatar}
							<img
								src={member.avatar}
								alt="Avatar"
								class="h-full w-full rounded-full object-cover"
							/>
						{:else}
							<div class="text-5xl">👨‍🎓</div>
						{/if}
					</div>
					<div
						class="absolute -right-2 -bottom-2 h-8 w-8 rounded-full border-4 border-[#1e1e1e] bg-green-500"
					></div>
				</div>
				<div class="flex-1 text-center md:text-left">
					<h1 class="mb-2 text-4xl font-bold">
						{#if member?.first_name || member?.last_name}
							{member.first_name || ''} {member.last_name || ''}
						{:else}
							Chưa cập nhật tên
						{/if}
					</h1>
					<p class="mb-4 text-lg text-gray-400">{member?.email || 'N/A'}</p>
					<p class="mb-4 text-gray-300">
						{member?.job || 'Chưa cập nhật nghề nghiệp'}
						{#if member?.company}
							| {member.company}
						{/if}
					</p>
					<div class="flex flex-wrap justify-center gap-2 md:justify-start">
						<span
							class="bg-primary/20 text-primary border-primary/30 rounded-full border px-4 py-1 text-sm"
						>
							{member?.role === 1 ? 'Admin' : 'Member'}
						</span>
						<span
							class="rounded-full border border-blue-500/30 bg-blue-500/20 px-4 py-1 text-sm text-blue-400"
						>
							{member?.email_verified_at ? 'Đã xác thực Email' : 'Chưa xác thực Email'}
						</span>
						<span
							class="rounded-full border border-green-500/30 bg-green-500/20 px-4 py-1 text-sm text-green-400"
						>
							Thành viên từ {member?.created_at ? new Date(member.created_at).getFullYear() : 'N/A'}
						</span>
					</div>
				</div>
			</div>

			<!-- Stats Grid -->
			<div class="mt-8 grid grid-cols-2 gap-4 md:grid-cols-4">
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
				>
					<div class="text-primary mb-1 text-3xl font-bold">
						{member?.purchased_courses || 0}
					</div>
					<div class="text-sm text-gray-400">Khóa Học Đã Mua</div>
				</div>
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
				>
					<div class="text-primary mb-1 text-3xl font-bold">
						{member?.course_completed || 0}
					</div>
					<div class="text-sm text-gray-400">Đã Hoàn Thành</div>
				</div>
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
				>
					<div class="text-primary mb-1 text-3xl font-bold">
						{member?.learn_time || '0h'}
					</div>
					<div class="text-sm text-gray-400">Thời Gian Học</div>
				</div>
				<div
					class="bg-primary/10 border-primary/30 rounded-2xl border p-4 text-center backdrop-blur-sm"
				>
					<div class="text-primary mb-1 text-3xl font-bold">
						{member?.average_score || 0}%
					</div>
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
					class="from-primary to-secondary hover:from-primary/90 hover:to-secondary/90 flex cursor-pointer items-center gap-2 rounded-full bg-gradient-to-r px-6 py-2 text-sm font-semibold transition-all duration-300 hover:scale-105"
				>
					<span>💾</span>
					<span>Lưu Thay Đổi</span>
				</button>
			</div>

			<div class="grid gap-6 md:grid-cols-2">
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Tên</label>
					<input
						type="text"
						value={member?.first_name || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Họ</label>
					<input
						type="text"
						value={member?.last_name || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Email</label>
					<input
						type="email"
						value={member?.email || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Số Điện Thoại</label>
					<input
						type="tel"
						value={member?.phone || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Nghề Nghiệp</label>
					<input
						type="text"
						value={member?.job || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Công Ty</label>
					<input
						type="text"
						value={member?.company || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
				<div>
					<label class="mb-2 block text-sm font-medium text-gray-400">Thời Gian Học</label>
					<input
						type="text"
						value={member?.learn_time || ''}
						class="focus:border-primary w-full rounded-xl border border-[#2a2a2a] bg-[#0a0a0a] px-4 py-3 text-white transition-colors focus:outline-none"
					/>
				</div>
			</div>

			<div class="mt-8 border-t border-[#2a2a2a] pt-6">
				<h3 class="mb-4 text-xl font-bold">Đổi Mật Khẩu</h3>
				<div class="grid gap-6 md:grid-cols-3">
					<div>
						<label class="mb-2 block text-sm font-medium text-gray-400">Mật Khẩu Hiện Tại</label>
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
						<label class="mb-2 block text-sm font-medium text-gray-400">Xác Nhận Mật Khẩu</label>
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
