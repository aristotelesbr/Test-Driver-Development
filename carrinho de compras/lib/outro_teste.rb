require 'test/unit'
require '../lib/item'
require '../lib/carrinho_de_compras'

class TesteMaiorPreco < Test::Unit::TestCase
  def teste_deve_comecar_vazio
    @carrinho = CarrinhoDeCompras.new
    assert_equal 0, @carrinho.itens.size
  end

  def teste_deve_retornar_apenas_um_item
    # 1
    @carrinho = CarrinhoDeCompras.new
    # 2
    geladeira = Item.new('Geladeira', 1, 700.0)
    # 3
    @carrinho << geladeira

    # 4
    assert_equal 1, @carrinho.itens.size
    assert @carrinho.itens.include?(geladeira)
  end

  def teste_deve_ter_dois_itens_apos_duas_adicoes
    @carrinho = CarrinhoDeCompras.new
    geladeira = Item.new('Geladeira', 1, 800.0)
    @carrinho << geladeira
    fogao = Item.new('Fogão', 1, 300.0)
    @carrinho << fogao

    assert_equal 2, @carrinho.itens.size
    assert @carrinho.itens.include?(fogao)
  end
end
