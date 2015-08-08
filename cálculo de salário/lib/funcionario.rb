class Cargo
  def initialize(regra)
    @regra = regra
  end

  DESENVOLVEDOR = Cargo.new(DezOuVintePorcento.new)
  DBA = Cargo.new(QuinzeOuVinteCincoPorCento.new)
  TESTADOR = Cargo.new(QuinzeOuVinteCincoPorCento.new)

  attr_reader :regra
  private :initialize
end

class Funcionario
  attr_reader :nome, :salario, :cargo

  def initialize(nome, salario, cargo)
    @nome = nome
    @salario = salario
    @cargo = cargo
  end
end
