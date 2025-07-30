<script lang="ts">
	import { countryCode } from '$lib/stores/common';
	let { children = null } = $props();
</script>

{#if $countryCode === null || $countryCode !== 'US'}
	<button class="btn">
		{#if children}
			{@render children()}
		{:else}
			btn
		{/if}
	</button>
{/if}

<style>
	.btn {
		padding: 0.75rem 1.125rem; /* 12px 18px */
		border-radius: 0.875rem; /* 14px */
		background: var(--gradient-button);
		color: var(--color-button-text);
		border: none;
		cursor: pointer;
		font-size: 1rem; /* 16px */
		line-height: 1.5rem; /* 24px */
		align-self: center;
	}
</style>
