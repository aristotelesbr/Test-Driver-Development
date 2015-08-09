# o valor da
# nota deve ser o valor do produto subtraído de 6%.
# Ou seja, 94% do valor tota

require 'test/unit'
require '../lib/nota_fiscal'
require '../lib/gerador_de_nota'

class Teste < Test::Unit::TestCase
  def teste_deve_gerar_NF_com_valor_de_imposto_descontado
    gerador = GeradorDeNotaFiscal.new
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido

    assert_equal 1000 * 0.94, nf.valor
  end
end
