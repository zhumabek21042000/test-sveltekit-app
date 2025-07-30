<script lang="ts">
	let { children } = $props();
</script>

<section class="container">
	{@render children()}
</section>

<style>
	.container {
		position: relative;
		height: 100%;
		padding-inline: var(--container-padding-mobile);
		background: var(--color-background);
		padding-top: 6rem; /* 96px */
	}

	@media (min-width: 768px) {
		.container {
			padding-inline: var(--container-padding-tablet);
		}
	}

	@media (min-width: 1024px) {
		.container {
			padding-inline: var(--container-padding-desktop);
		}
	}

	@media (min-width: 1367px) {
		.container {
			padding-inline: var(--container-padding-large);
		}
	}
</style>
