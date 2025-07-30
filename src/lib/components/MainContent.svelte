<script>
	import Button from './Button.svelte';
</script>

<main class="main-content">
	<section class="main-content-text">
		<div class="main-content-text-header">
			<h1>Instant access to investing, anytime and anywhere</h1>
			<p>
				Start trading top assets, from stocks to metals, in minutes, right from your phone or
				laptop. Enjoy a complete trading ecosystem with built-in analytics and educational tools.
			</p>
		</div>
	</section>
	<Button>Get started for free</Button>
</main>

<style>
	.main-content {
		width: 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
		text-align: center;
		gap: 2.5rem;
		padding-bottom: 2.5rem;
	}

	.main-content-text {
		display: flex;
		flex-direction: column;
		gap: 2.5rem;
	}

	.main-content-text-header {
		display: flex;
		flex-direction: column;
		gap: 1.5rem;
	}

	h1 {
		font-size: 2.25rem;
		line-height: 2.75rem;
		color: var(--color-primary);
		font-weight: 450;
	}

	p {
		font-size: 0.875rem;
		line-height: 1.25rem;
		color: var(--color-secondary);
		font-weight: 400;
	}

	@media (min-width: 768px) {
		h1 {
			font-size: 3.5rem;
			line-height: 4rem;
		}

		p {
			font-size: 14px;
			line-height: 20px;
		}
	}

	@media (min-width: 1024px) {
		.main-content-text {
			padding-inline: 4rem;
		}
		h1 {
			font-size: 4.125rem;
			line-height: 5.125rem;
		}
	}

	@media (min-width: 1367px) {
		.main-content-text {
			padding-inline: 11.4375rem;
		}
		p {
			padding-inline: 9rem;
		}
	}
</style>
