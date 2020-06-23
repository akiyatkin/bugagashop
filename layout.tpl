{HAT:}
	<div class="container d-flex align-items-stretch">
		<style>
			.hat .text {
				border-left:1px solid var(--gray); 
				border-right:1px solid var(--gray);
			}
			.hat .text,
			.hat a {
				/*color:#999999; */
				text-decoration: none;
			}
			/*.hat .text a:hover {
				color:black;
			}*/
		</style>
		<a class="py-2 pr-3 d-flex align-items-center" href="/">
			<img src="/-imager/?&w=200&h=40&src=-images/logo.png">
		</a>
		<div class="d-flex text border-0 flex-grow-1 align-items-center justify-content-center">
			<a class="text-nowrap d-none d-sm-block d-md-none" 
				href="tel:{Телефон}"><i class="fas fa-phone-alt"></i>&nbsp;{Телефон}
			</a>
		</div>
		<div class="d-none d-md-flex align-items-stretch" style="min-width: 0">
			<div class="px-3 d-flex align-items-center text">
				<div class="text-muted pr-3 mr-3 text-truncate d-none d-xl-block" style="border-right:1px solid var(--gray);">
					{Слоган}
				</div>
				<a class="text-nowrap" href="tel:{Телефон}">
					<i class="fas fa-phone-alt"></i>&nbsp;{Телефон}
				</a>
			</div>
			<div class="d-none d-md-flex px-3 align-items-center">
				<div><span class="showContacts btn btn-outline-danger text-nowrap">Написать сообщение</span></div>
			</div>
			<nav class="d-flex align-items-center" style="min-width: 0" id="USERMENU1"></nav>
		</div>
		<div class="bars ml-3 d-flex d-md-none align-items-center">
			<div><i style="font-size:32px; color:var(--main); cursor: pointer" class="fas fa-bars"></i></div>
		</div>
	</div>
	<div class="mobilemenu shadow">
		<div class="container py-3">
			<div id="USERMENU2"></div>
			<div class="mt-3" id="MAINMENU2"></div>
			<div class="text-right mt-3">
					<span class="showContacts btn btn-outline-danger text-nowrap">Написать сообщение</span>
			</div>
		</div>
	</div>
{BODY:}
	{Полоса}
	<header class="hat shadow-sm">
		<style>
			.hat {
				border-top:5px solid var(--main); 
				position:sticky; 
				top:0; 
				z-index:20; 
				background-color: white;
			}
			.hat .mobilemenu {
				visibility: hidden;
				transition-duration: 0.5s;
				transition-property:opacity;
				opacity: 0;
				position: absolute;
				width:100%;
				background-color: rgba(255,255,255,0.9)
			}
			.hat .mobilemenu.show {
				visibility: visible;
				opacity: 1;
				display: block;
			}
			/*@media (min-width:575px) { */
			@media (min-width:768px) {
				.hat .mobilemenu.show {
					visibility: hidden;
				}
			}
		</style>
		{:HAT}
		<script type="module">
			let div = document.body.getElementsByClassName('hat')[0];
			let cls = cls => div.getElementsByClassName(cls)[0];
			let bars = cls('bars');
			let ismm = false;
			let mm = cls('mobilemenu');
			bars.addEventListener('click', event => {
				if (ismm) mm.classList.remove('show');
				else mm.classList.add('show');
				ismm = !ismm;
				event.stopPropagation();
			});
			document.body.addEventListener('click', event => {
				if (!ismm) return;
				let click = new Event('click');
				bars.dispatchEvent(click);
			});
		</script>
	</header>
	<header class="container py-3">
		<div class="d-lg-flex justify-content-between align-items-center">
			<div class="mb-3 mb-lg-0 d-none d-md-block" id="MAINMENU1"></div>
			<div class="ml-lg-5 flex-grow-1" id="SEARCHFORM"></div>
		</div>
	</header>

	<section id="CONTENT" style="min-height: 400px" class="container"></section>
	<footer>
		<style>
			footer {
				color:#999999;
			}
			footer .heading {
				display: block;
				text-decoration: none;
				padding-bottom:3px;
				margin-bottom:6px;
				font-size:14px;
				font-weight: bold;
				text-transform: uppercase;
				color:#999999;
				border-bottom:3px solid var(--main);
			}
			footer .footmenu {
				font-size:13px;
			}
			footer .footmenu a {
				color:#999999;
			}
			footer .footmenu a:hover {
				color:black;
			}
			footer .red {
				color:var(--main);
			}
		</style>
		
		{:SUBROW}
		<div class="container py-3 footmenu">
			<div class="row">
				<div class="col-sm-6 col-lg-3 mb-3">
					<a href="/contacts" class="heading">Контакты</a>
					
					{Адрес?:footaddr}
					

					<div class="mb-1 d-flex align-items-center">
						<div class="mr-1 red"><i class="fas fa-phone-alt fa-fw"></i></div>
						<div class="flex-grow-1 text-nowrap">
							<a href="tel:{~tel(Телефон)}">{Телефон}</a>
						</div>
					</div>
					{Whatsapp:showphone}
					<div class="mb-1 d-flex align-items-center">
						<div class="mr-1 red"><i class="fas fa-envelope fa-fw"></i></div>
						<div class="flex-grow-1">
							{Email}
						</div>
					</div>
					<div class="mb-1 d-flex align-items-center">
						<div class="mr-1 red"><i class="fas fa-clock fa-fw"></i></div>
						<div class="flex-grow-1">
							{График}
						</div>
					</div>
				
				</div>
				<div class="col-sm-6 col-lg-3 mb-3">
					<a href="/catalog" class="heading">Каталог</a>
					<div id="FOOTGROUPS"></div>
				</div>
				<div class="col-sm-6 col-lg-3 mb-3">
					<div class="heading">Услуги</div>
					<div id="FOOTSERVICE"></div>
				</div>
				<div class="col-sm-6 col-lg-3 mb-3">
					<div class="heading">Информация</div>
					<div id="FOOTINFO"></div>
				</div>
			</div>
			<div class="d-flex flex-column flex-sm-row justify-content-between">
				<div class="order-sm-2 text-right">
					<div id="COUNTER"></div>
				</div>
				<div class="order-sm-1">	
					Все права защищены © {~years(:2020)}<br>
					Создание сайта — <a href="http://itlife-studio.ru"><span style="color:#44a9fe">Айти</span><span style="color:#9fd70a">лайф</span></a>
				</div>
				
			</div>

		</div>
	</footer>
		{showphone:}
			<div class="mb-1 d-flex align-items-center">
				<div class="mr-1 red"><i style2="color:#25D366;" class="fab fa-whatsapp fa-fw"></i></div>
				<div class="flex-grow-1 text-nowrap">
					<a href="whatsapp://send?phone={~tel(.)}">{.}</a>
				</div>
			</div>
	{footaddr:}
		<div class="mb-1 d-flex align-items-center">
			<div class="mr-1 red"><i class="fas fa-map-marker-alt fa-fw"></i></div>
			<div class="flex-grow-1">{Адрес}</div>
		</div>
	{SUBSALE:}15%
	{SUBROW:}
		<div class="container py-3">
			<style>
				footer .soc {
					font-size:22px
				}
				@media (max-width: 768px) {
					footer .title {
						font-size: 20px;
					}
					footer .soc {
						font-size: 48px;
					}
					footer .soc a {
						margin:10px 20px;
					}
				}
				@media (max-width: 575px) {
					footer .title {
						font-size: 16px;
					}
				}
			</style>
			<div class="py-4 py-md-3 px-3 px-sm-5 dark radius-pill radius-md-0" style="color:white; background-color: var(--main)">
				<div class="d-flex flex-column flex-md-row align-items-center">
					
					<div class="title order-md-2 text-uppercase px-3 text-center text-md-left mb-sm-3">
						Подпишитесь на <abbr title="Рассылка не чаще 1 раза в 3 месяца">новости</abbr> и&nbsp;получите купон со&nbsp;скидкой до&nbsp;<b>{:SUBSALE}</b>.
					</div>
					{(Вконтакт|Инстаграм)?:printsoc}
					<div style="width:100%" class="mt-2 order-md-3 flex-grow-1 d-flex align-items-center justify-content-center">
						<div id="SUBSCRIBE"></div>
					</div>
				</div>

			</div>
		</div>
		{printsoc:}
			<div class="soc mb-md-0 order-md-1 d-flex flex-md-column flex-lg-row text-center">
				{Вконтакт?:printvk}
				{Инстаграм?:printinst}
			</div>
		{printvk:}<a href="{Вконтакт}"><i class="fab fa-vk fa-fw"></i></a>
		{printinst:}<a href="{Инстаграм}"><i class="fab fa-instagram fa-fw"></i></a>
{SUBSCRIBE:}
	<form data-layerid="{id}"
		data-autosave="{autosavename}"
		data-goal="{goal}"
		data-global="{global}"
		data-recaptcha="subscribe" 
		action="/-bugagashop/subscribe" method="post" class="form d-flex flex-column flex-lg-row">
		<div class="flex-grow-1 d-flex order-lg-2 align-items-stretch">
			<input placeholder="Email" class="form-control flex-grow-1" style="height:100%; border-radius:100px; padding-right:40px" name="email" type="email">
			<input class="btn btn-secondary" style="margin-left:-30px;" value="Отправить" type="submit">
		</div>
		<div class="mt-2 mt-lg-0 pr-lg-3 order-lg-1">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="terms" id="checkbox{id}">
				<label style="color:var(--gray)" class="custom-control-label" for="checkbox{id}">{Политика}</label>
			</div>
		</div>
	</form>
	{config.ans.msg?:showmsg}
	{showmsg:}
	<div class="text-right mt-2"><i>{config.ans.msg}</i></div>
{FOOTMENU:}
	{data.data.data::fmitem}
	{fmitem:}
		<div><a href="{Ссылка}">{Название}</a></div>
{FOOTGROUPS:}
	{data.root.childs::fgitem}
	{fgitem:}
		<div><a href="/catalog/{group_nick}">{group}</a></div>
{live::}-catalog/live/layout.tpl
{SEARCHFORM:}
	<form data-autosave="{autosavename}" class="shadow-over">
		<div class="d-flex align-items-stretch">
			<div class="flex-grow-1">
				<input style="width:100%" type="search" id="search" class="form-control" name="search" placeholder="Поиск о каталогу">
			</div>
			<div class="submit d-flex align-items-center px-3" style="background-color:var(--main); color:white"><i class="fas fa-search"></i></div>
		</div>
	</form>
	{:live.JS}
{USERMENU1:}
		<div class="pl-3 d-flex" style="min-width: 0">
			{data.user.email?:muser2?:mguest2}
			{data.order.count?:bhas?:bempty}
		</div>
	{mguest2:}
		<div class="text-truncate"><i class="fas fa-user fa-fw"></i> <a href="/user/signin?back=ref">Личный кабинет</a></div>
	{muser2:}
		<div class="text-truncate"><i class="fas fa-user fa-fw"></i>
			<a href="/cart">{data.user.email}</a></div>
	{bempty:}
	{bhas:}
		<div class="ml-3 text-nowrap">
			<a href="/cart/orders/my/list" style="color:inherit; text-decoration: none"><b class="mr-2">{data.order.count} <i class="fas fa-cart-arrow-down"></i></b></a> <a href="/cart/orders/my/list"><b>{~cost(data.order.total)} руб.</b></a>
		</div>
{USERMENU2:}
 	<div class="d-flex justify-content-between" style="min-width: 0">
		{data.user.email?:muser2?:mguest2}
		{data.order.count?:bhas?:bempty}
	</div>
{MAINMENU:}
	<div class="mmenu d-flex flex-wrap mx-n2">
		<style>
			#{div} .mmenu a {
			
				font-weight: normal;
				font-size:14px;
				text-decoration: none;
				padding-top:6px;
				padding-bottom:6px;
				text-transform: uppercase;
				display: block;
			}
			#{div} .mmenu a:hover {
				padding-bottom:3px;
				border-bottom:3px solid var(--danger);
				color: var(--danger);
				
			}
			

			#{div} .mmenu .submenu {
				border: solid 1px var(--gray);
				background-color:rgba(255,255,255);
				text-transform: none;
				position:absolute;
				
				
				padding: 4px 10px;
				margin-left: -10px;
				padding-bottom:0.5rem;
				border-radius: 0 0 20px 10px;
				border-radius: 0 0 2px 2px;

				max-height: 0;
			    opacity: 0;
			    overflow: hidden;
			    transition: 500ms;
			}
			#{div} .mmenu .submenu.show {
		    	opacity: 1;
		    	max-height: 800px;
		    }
			
			@media (max-width:768px) {
				#{div} .mmenu .fas,
				#{div} .mmenu .submenu {
					display: none!important;
				}
			}
		</style>
		{data.childs::mmitem}
		
		<script type="module">
			let div = document.getElementById('{div}')
			let cls = (cls, d = div) => d.getElementsByClassName(cls)
			let tag = (tag, div) => div.getElementsByTagName(tag)
			for (const sub of cls('subgroups')) {
				for (const a of tag('a',sub)) {
					let myli = a.parentNode;
					let sub = cls('submenu', myli)[0]
					if (!sub) continue
					a.addEventListener('mouseenter', () => {
						sub.style.zIndex = 2
						sub.classList.add('show')
						for (const li of tag('li', div)) {
							if(myli == li) continue
							let sub = cls('submenu', li)[0]
							sub.style.zIndex = 1
							sub.classList.remove('show')
						}
						
						
					})
				}
			}
			document.body.addEventListener('click', (e) => {
				let el = e.target
				let path = [el]
				while (el && el.parentElement) path.push(el = el.parentElement)

				for (const p of path) {
					if (p !== div) continue;
					
					let ar = path.filter(el => el.tagName == 'A')
					if (!ar.length) return
					let a = ar[0]

					if (cls('submenu', a.parentNode).length) return
					break;
				}

				for (const sub of cls('submenu', div)) {
					sub.classList.remove('show')	
				}
			})
		</script>
	</div>

	{mmitem:}
		<div class="text-nowrap mx-2 {childs?:strsubgroups}">
			<a href="{Ссылка}">{Название}{childs?:mark}</a>
			{childs?:submenu}
		</div>
		{strsubgroups:}subgroups
	{mark:}&nbsp;<i class="fas fa-chevron-circle-down"></i>
	{submenu:}
		<div class="submenu shadow">
			{childs::subitem}
		</div>
	{subitem:}<a href="{Ссылка}">{Название}</a><span> </span>
{PAGE:}
	<div class="row">
		<style>
			@media (max-width:991px) {
				/* Колонка скрывается только на мобильных, только на странице позиции */
				#{div} .column-yes {
					display: block!important;
				}
			}
		</style>
		<div class="col-lg-3 d-none d-lg-block column-{~parse(~array(parsedtpl))}">
			<div id="MAINFILTERS"></div>
			<div id="BIGACTION"></div>
			<div id="GROUPS" class="mb-3"></div>
		</div>
		<main id="PAGE" class="col-lg-9 pb-3 mb-5 mb-lg-0"></main>
	</div>
{GROUPS:}
	<div class="card">
		<style>
			#{div} .card-header {
				cursor:pointer;
			}
			#{div} .card-body {
			    max-height: 0;
			    opacity: 0;
			    overflow: hidden;
			    transition: 0.5s;
			}
		    #{div} .card-body.show {
		    	opacity: 1;
		    	max-height: 800px;
		    }
			@media (max-width:991px) {
				#{div} .card-body {
					opacity: 1;
		    		max-height: 800px;
				}
				#{div} .card-body.show {
					opacity: 0;
		    		max-height: 0;	
				}
			}
			/*@media (max-width:768px) {
				#{div} .card-body {
					display: none;
				}
			}*/
		</style>
		<div class="bg-primary card-header d-flex justify-content-between">
			<div class="flex-grow-1 d-flex align-items-center">
				<a style="color:inherit" href="/catalog"><b>Каталог товаров</b></a>
			</div>
			<div style="font-size:150%; line-height: 100%; margin-bottom: -2px; margin-top: -2px; ">
				<i class="fas fa-bars"></i>
			</div>
		</div>
		<div class="card-body show p-0">
			<div id="ALLGROUPS"></div>
		</div>
		<script type="module">
			let div = document.getElementById('{div}')
			let cls = cls => div.getElementsByClassName(cls)[0]
			let title = cls('card-header')
			title.addEventListener('click', (e) => {
				let body = cls('card-body')
				body.classList.toggle('show')
			})
		</script>
	</div>
	{igroup:}<a href="/catalog/{group_nick}">{group}</a>
{MAIN:}
	<div class="row">
		<div class="col-lg-3" class="mb-3">
			<div id="MAINFILTERS"></div>
			<div id="BIGACTION"></div>
			<div id="GROUPS"></div>
		</div>
		<div class="col-lg-9">
			<div id="SLIDES"></div>
			<section id="PRODUCERS" class="my-4"></section>
			{Заголовок}
			<section id="MAINBODY"></section>
			<section id="NEWS"></section>
		</div>
	</div>
	{MAINBODY:}
		<div class="mb-5">
			<section id="ACTIONS"></section>
			<div id="more"></div>
			<div class="text-center">
				<a href="/catalog" class="btn btn-outline-danger">Перейти в каталог</a>
			</div>
		</div>
{NEWS:}
	<style>
		#{div} .link {
			position: relative;
			display: block;
		}
		#{div} .hover {
			opacity: 0;
			transition-duration: .5s;
			position: absolute;
				margin:auto;
			top: 0; left: 0; bottom: 0; right: 0;
			padding-bottom:20px;
		}
		#{div} .link:hover .hover {
			opacity: 1;
			padding-bottom:0px;
		}
		@media (max-width:768px) {
			#{div} .hover {
				opacity: 1;
				padding-bottom:0px;
			}
		}
	</style>
	<a href="/events" class="h1 mb-0" style="color:var(--main)">Новости</a>
	<div class="row">
		{data.list::nitem}
	</div>
	{nitem:}
		<div class="col-sm-6 mb-3">
			<a class="link" href="/events/{name}" style="color:inherit; text-decoration: none">
				<div>
					<div style="font-size:12px" class="mb-1 text-muted text-right">{~date(:d/m/Y,date)}</div>
					<p><img class="img-fluid" src="/-imager/?src={images.0.src}&w=600&h=200&crop=1&top=1"></p>
					<p class="h2 font-weight-bold">{heading}</p>
				</div>
				<div class="hover d-flex justify-content-center align-items-center"><div class="btn btn-primary">Читать</div></div>
			</a>
			{preview}
		</div>
{BIGACTION:}
	{Акция?:bigactionshow}
	{bigactionshow:}
	<div class="mb-3">
		{~parse(~obj(:0,Акция))}
	</div>




{PRODUCERS:}
	<div class="row">{data.list::pritem}</div>
	{pritem:}
		{logo?:primg}
	{primg:}
		<div class="mx-4 mb-4">
			<a href="/catalog/{producer_nick}">
				<img title="{producer}" alt="{producer}" class="grayscale img-fluid" height="50" src="/-imager/?h=50&src={logo}">
			</a>
		</div>
{extend::}-catalog/extend.tpl

{ADVANTS:}
	<style>
		#{div} i {
			font-size:40px;
			color:rgba(128, 128, 128, 0.3);
		}
	</style>
	{::aditem}
	{aditem:}
		<div class="col-md-6 col-lg-3 d-flex mb-3">
			<i class="{Иконка} fa-fw mr-3"></i>
			<span>{Название}</span>
		</div>
{SLIDEScss:}
	<style>
		#{div} .carousel {
			height:100%;
		}
		#{div} .carousel-indicators li {
			height:20px;
			width:60px;
			border-radius:0px;
			cursor: pointer;
			border-bottom:3px solid white;
			/*border:5px solid rgba(255,255,255,0.8);*/
			/*border:5px solid var(--primary);*/
			/*background-color: var(--warning);*/
			opacity: 1;
			background-color: transparent;
		}
		#{div} .carousel-indicators .active {
			opacity: 1;
			border-bottom:3px solid var(--main);
		}
		/*#{div} .carousel-caption {
			margin-right:-20px;
		}*/
		#{div} .carousel-item {
			height:100%;
			background-size: cover; 
			background-position: left;
		}
		#{div} section {
			text-transform: uppercase;
			flex-direction: column;
			font-size:30px;
		}
		#{div} header {
			color:var(--main);
			padding:5px 15px;
			margin-bottom:5px;
		}
		#{div} article {
			background-color:var(--main);
			color:white;
			display: inline-block;
			padding:5px 15px;
		}
		#{div} .carousel-control-next-icon,
		#{div} .carousel-control-prev-icon {
			display: none;
		}
		@media (max-width:768px) {
			#{div} section {
				font-size:18px;
			}
		}
	</style>
{SLIDES:}
	<div style="height:320px" id="mainslider" class="carousel slide carousel-fade" 
		data-pause="hover" 
		data-ride="carousel" 
		data-interval="5000">
		{:SLIDEScss}	
		<ol class="carousel-indicators justify-content-center">
			{data.list::slidenum}
		</ol>
		<div style="height:100%" class="carousel-inner">
			{data.list::slide}
		</div>
		<a class="carousel-control-prev" href="#mainslider" data-pause="true" data-ascroll="false" data-crumb="false" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Назад</span>
		</a>
		<a class="carousel-control-next" href="#mainslider" data-ascroll="false" data-crumb="false" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Вперёд</span>
		</a>
	</div>
	<script type="module">
		import { CDN } from '/vendor/akiyatkin/load/CDN.js'
		CDN.fire('load','bootstrap')
	</script>
	{slidenum:}<li data-target="#mainslider" data-slide-to="{~sum(~key)}" class="{~first()?:active}"></li>
	{slide:}
		<div 
			class="carousel-item px-5 pt-3 {~first()?:active} d-flex align-items-stretch flex-column justify-content-between" 
			style="padding-bottom:50px; background-position:center; background-image: url('/data/auto/slides/{file}')">
			{src?:slidecaption}
		</div>
	{slidecaption:}
		{~parse(src)}
