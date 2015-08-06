class CalculadoraDeSalario

#   Desenvolvedores possuem 20% de desconto caso seu salário seja maior
# do que R$ 3000,0. Caso contrário, o desconto é de 10%.
#   DBAs e testadores possuem desconto de 25% se seus salários forem
# maiores do que R$ 2500,0. 15%, em caso contrário.

  def calcula_salario(funcionario)
    if funcionario.cargo == Cargo::DESENVOLVEDOR
      return dez_ou_vinte_por_cento_de_desconto(funcionario)
    elsif funcionario.cargo == Cargo::DBA ||
          funcionario.cargo == Cargo::TESTADOR
      return quinze_ou_vinte_e_cinco_por_cento_de_desconto(funcionario)
    end
    raise Exeption.new('Funcionario Inválido')
  end

  private

  def dez_ou_vinte_por_cento_de_desconto(funcionario)
    return funcionario.salario * 0.8 if funcionario.salario > 3000
    return funcionario.salario * 0.9
  end

  def quinze_ou_vinte_e_cinco_por_cento_de_desconto(funcionario)
    return funcionario.salario * 0.75 if funcionario.salario > 2500
    return funcionario.salario * 0.85
  end
end
