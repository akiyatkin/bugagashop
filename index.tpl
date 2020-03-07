<!doctype html>
<html lang="ru">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<link rel="apple-touch-icon" sizes="57x57" href="/~index/favicon/apple-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="60x60" href="/~index/favicon/apple-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="72x72" href="/~index/favicon/apple-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="/~index/favicon/apple-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/~index/favicon/apple-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="/~index/favicon/apple-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="/~index/favicon/apple-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="/~index/favicon/apple-icon-152x152.png">
		<link rel="apple-touch-icon" sizes="180x180" href="/~index/favicon/apple-icon-180x180.png">
		<link rel="icon" type="image/png" sizes="192x192"  href="/~index/favicon/android-icon-192x192.png">
		<link rel="icon" type="image/png" sizes="32x32" href="/~index/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="96x96" href="/~index/favicon/favicon-96x96.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/~index/favicon/favicon-16x16.png">
		<meta name="msapplication-TileColor" content="#ffffff">
		<meta name="msapplication-TileImage" content="/~index/favicon/ms-icon-144x144.png">
		<meta name="theme-color" content="#ffffff">

		<link data-name="fontawesome" rel="stylesheet" href="{~conf.load.cdncss.fontawesome}" />
		<link data-name="bootstrap" rel="stylesheet" href="{~conf.load.cdncss.bootstrap}">

		<link rel="stylesheet" href="/-collect/?css">

		<script>
			window.domready = async (call) => {
				let Load = (await import('/vendor/akiyatkin/load/Load.js')).default
				let Wait = await Load.on('import-default', '/vendor/akiyatkin/load/Wait.js')
				let CDN = await Load.on('import-default', '/vendor/akiyatkin/load/CDN.js')
				await CDN.js('jquery')
				await CDN.js('popper')
				await CDN.js('bootstrap')
				await Wait()
				call()
			}
		</script>
		<script src="/-collect/?js"></script>
	</head>
	<body id="BODY"></body>
</html>