<script lang="ts">
	import '../app.css';
	import { countryCode } from '$lib/stores/common';

	let { children, data } = $props();

	$effect(() => {
		const country_code = data?.country_code ?? null;
		countryCode.set(country_code);
	});
</script>

{@render children()}
