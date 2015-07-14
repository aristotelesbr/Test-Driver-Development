require 'test/unit'
require '../lib/calculadora_de_salario'
require '../lib/funcionario'

class CalculadoraDeSalarioTest < Test::Unit::TestCase
  def teste_deve_calcular_salario_para_desenvolvedores_com_salario_abaixo_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Ary', 1500.0,
      Cargo::DESENVOLVEDOR)

    salario = calculadora.calcula_salario (desenvolvedor)
    assert_equal 1500 * 0.9, salario
  end

  def teste_deve_calcular_salario_para_desenvolvedores_com_salario_acima_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Renato', 4000.0,
      Cargo::DESENVOLVEDOR)
    salario = calculadora.calcula_salario (desenvolvedor)
    assert_equal 4000 * 0.8, salario
  end

  def teste_deve_calcular_salario_para_DBAs_com_salario_abaixo_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Tio', 500.0, Cargo::DBA)
    salario = calculadora.calcula_salario (desenvolvedor)
    assert_equal 500 * 0.85, salario
  end
end
