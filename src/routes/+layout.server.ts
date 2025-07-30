export async function load({ cookies }) {
  console.log('###load check###')
	const response = await fetch('https://api.myip.com/');
	
	const data = await response.json();
	const country_code = data.cc;
	cookies.set('country_code', country_code, {
		path: '/',
		httpOnly: true,
		sameSite: 'strict',
		secure: false,
		maxAge: 120
	});

	return {
		country_code
	};
}
