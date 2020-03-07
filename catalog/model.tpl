{::}vendor/infrajs/cart/catalog/model.tpl
{css:}
	<style>
		#{div} .props .line {
			margin-right:10px;
			border-bottom: 1px dotted #ccc; 
			flex-grow: 1;
		}
		#{div} .props .limit {
			max-width: 150px;
			text-overflow: ellipsis;
			overflow: hidden;
			white-space: nowrap;
		}

		#{div} .model {
			border:1px solid var(--gray);
			position: relative;
			margin-bottom:0px;
			transition: 0.5s;

		}
		#{div} .cart-basket .button {
			cursor: pointer;
			transition:.3s;
			text-transform: uppercase;
			flex-grow:1;
		}
		#{div} .cart-basket .button {
			padding:0 10px;
		}
		#{div} .between .cart-basket {
			display: flex;
			justify-content: space-between;
		}
		#{div} .cart-basket .button:hover {
			background-color: var(--orange)
		}
		#{div} .cart-basket .ico {
			transition:.3s;
			color:white;
			text-decoration: none;
			background-color: var(--black);
		}
		#{div} .cart-basket input {
			border-radius: 0;
			color:white;
			background-color: var(--black);
			border:none;
			text-align: right;
		}


		#{div} .model .cart-basket {
			transition: 0.5s;
			display: flex;
			align-items: stretch;
			color:white;
		}
		#{div} .model .cart-basket {
			margin-top:-39px;
			opacity: 0;
		}
		#{div} .model:hover .cart-basket {
			opacity: 1;
			margin-top:0px;
		}
		
		#{div} .model:hover {
			position: relative;
			z-index:2;
			background-color: white;
			margin-bottom:-39px;
		}
		
		@media (max-width:768px) {
			#{div} .model {
				margin-bottom:0px;
			}
			#{div} .model .cart-basket {
				opacity: 1;
				margin-top:0px;
			}
		}

	</style>
{CARDS-item:}
	<div class="mb-4 col-12 col-sm-6 col-lg-6 col-xl-4">
		<div class="model shadow-over" style="position: relative;">{:CARDS-data}</div>
	</div>
{CARDS-image:}
	{Наличие=:strАкция?:conner}
	<a href="{:link-pos}">
		<img class="img-fluid" src="/-imager/?m=1&amp;w=525&amp;src={images.0}" />
	</a>
	{strАкция:}Акция
	{conner:}
		<div style="
				position: absolute; 
				right:0;
				margin-right:-10px;">
			<div class="py-2 px-3" style="
				color:white; 
				font-size:12px;
				text-transform: uppercase;
				background-color: var(--main); 
			">{Наличие}</div>
			<div style="float:right; width:10px; height:0px; 
				border-left:10px solid #ab040e;
				border-bottom:10px solid white;
				"></div>
		</div>
{CARDS-data:}
	{images.0?:CARDS-image}
	{:CARDS-basket}
	<div class="p-2">
		{:CARDS-name}
		{:CARDS-props}
	</div>
{POS-props:}
	<div class="props">
		{showcase.props::posprop}
		{Цена?:cost}
	</div>
{CARDS-props:}
	<div class="props">
		{showcase.props::divprop}
		{Цена?:cost}
	</div>
{cost-one:}
		<div class="d-flex justify-content-between align-items-end"><b class="cost {Наличие=:strАкция?:strred}">{~cost(Цена)}{:unit}</b> {Старая цена:oldcost}</div>
		{oldcost:}<span class="text-muted" title="Старая цена"><s>{~cost(.)}{:unit}</s></span>
{CARDS-basket:}
	<div style="background-color:var(--black)" class="cart-basket">
		{min?(show?:showonecost?:showitemscost)?(~length(items)?:showitemonecost?(Цена?:showonecost?:shownocost))}
	</div>
	{showonecost:}
		<input type="number" value="1" min="0" max="999" class="form-control" style="width:4em">
		<div title="Купить {producer} {article} {item}"  class="d-flex border-0 align-items-center justify-content-center add button" data-producer="{producer_nick}" data-article="{article_nick}" data-id="{item_nick}{catkit:ampval}">
			{~conf.cart.textadd}
		</div>
		<div href="/cart/orders/my/list" class="ico d-flex align-items-stretch justify-content-center" style="font-size:24px; width:60px">
			<div class="d-flex align-items-center">
				<i class="fas fa-shopping-cart"></i>
			</div>
		</div>
	{showitemonecost:}
		<a class="button p-2" style="color:inherit; text-decoration: none" href="{:link-pos}">Выбрать</a>
		</a>
	{shownocost:}
		<a class="button p-2" style="color:inherit; text-decoration: none" href="{:link-pos}">Подробней</a>
		</a>
	{showitemscost:}
		{:showitemonecost}