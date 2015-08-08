
#   Desenvolvedores possuem 20% de desconto caso seu salário seja maior
# do que R$ 3000,0. Caso contrário, o desconto é de 10%.
#   DBAs e testadores possuem desconto de 25% se seus salários forem
# maiores do que R$ 2500,0. 15%, em caso contrário.

class CalculadoraDeSalario
  def calcula_salario(funcionario)
    funcionario.cargo.regra.calcula(funcionario)
  end
end

class DezOuVintePorcento
  def calcula(funcionario)
    return funcionario.salario * 0.8 if funcionario.salario > 3000
    return funcionario.salario * 0.9
  end
end

class QuinzeOuVinteCincoPorCento
  def calcula(funcionario)
    return funcionario.salario * 0.75 if funcionario.salario > 2500
    return funcionario.salario * 0.85
  end
end
