{::}vendor/infrajs/cart/catalog/position.tpl
{src:}~auto/texts/position.tpl
{info:}{~parse(:src)}
{props:}
	<div class="mb-3">
		{:model.POS-props}
	</div>
	{items?:showitems}
	<div>
		{Скрыть фильтры в полном описании??:print_more}
	</div>
	<div class="mb-3">
		{Цена?:model.cost}
	</div>
	{Цена?:model.basket-between}