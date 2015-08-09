require 'test/unit'
require 'mocha/setup'
require '../lib/nota_fiscal'
require '../lib/gerador_de_nota'

class GeradorDeNotaFiscalTest < Test::Unit::TestCase
  def teste_deve_persistir_NF_gerada
    dao = stub_everything
    sap = mock.tap{|sap| sap.expects(:envia)}

    gerador = GeradorDeNotaFiscal.new dao, sap
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
end
