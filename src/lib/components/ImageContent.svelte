<div class="main-image-container">
	<!-- svelte-ignore a11y_img_redundant_alt -->
	<img src="/images/main-image.png" alt="main-image" />
</div>

<style>
	.main-image-container {
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	img {
		width: 100%;
		height: auto;
		max-width: 100%;
		object-fit: contain;
	}

	@media (min-width: 640px) {
		img {
			max-width: 600px;
		}
	}

	@media (min-width: 768px) {
		img {
			max-width: 700px;
		}
	}

	@media (min-width: 1024px) {
		img {
			max-width: 960px;
		}
	}

	@media (min-width: 1366px) {
		img {
			max-width: 100%;
			height: 800px;
		}
	}
</style>
