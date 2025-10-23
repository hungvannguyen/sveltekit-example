<script lang="ts">
	import '../../app.css';
	import '../../lib/styles/fonts.css';
	import '../../lib/styles/global.css';

	let { children } = $props();
</script>

<!-- Login layout - no header/footer -->
<div class="min-h-screen bg-black">
	{@render children()}
</div>
