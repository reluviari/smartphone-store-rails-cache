class Sell < ApplicationRecord

=begin
	Como a técnica Russian Doll é feita através de um cache dentro de outro e o cache interior só é atualizado quando o 
	exterior também for. Por exemplo, vamos supor que a data da primeira venda do produto seja atualizada. 
	Como nós temos o cache de vendas dentro do cache de produtos, o cache de vendas não será atualizado até que o 
	cache de produto expire através de alguma atualização diretamente no model de produto (Product).

	No Fragment Caching nós vimos que um cache é expirado quando há uma atualização no atributo updated_at. 
	Então, ao adicionarmos o touch: true, toda vez  que alguma venda por atualizada, e tiver o atributo updated_at atualizado, 
	este mesmo atributo do produto também será atualizado, ou seja, atualizar uma venda é um gatilho para uma atualização 
	no produto também. Desta forma, toda vez que uma venda for atualizada, o cache da venda e do produto, que está um nivel acima,
	 também vai expirar e ambos serão recarregados.	
=end

  belongs_to :product, touch: true
end