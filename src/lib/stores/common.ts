import { writable } from 'svelte/store';

export const countryCode = writable<string | null>(null);
