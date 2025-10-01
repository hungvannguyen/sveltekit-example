<script>
	/** @type {string} */
	export let question = '';

	/** @type {string} */
	export let answer = '';

	/** @type {string} */
	export let className = '';
</script>

<li class="mb-10 {className}">
	<p class="mb-2 font-medium !text-white md:font-semibold">
		{question}
	</p>
	<p>
		{answer}
	</p>
</li>
