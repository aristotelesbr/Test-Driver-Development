class Pedido
  attr_reader :cliente, :valor_total, :quantidade_itens
  def initialize(cliente, valor_total, quantidade_itens)
    @cliente = cliente
    @valor_total = valor_total
    @quantidade_itens = quantidade_itens
  end
end

class NotaFiscal
  attr_reader :cliente, :valor, :data
  def initialize(cliente, valor, data)
    @cliente = cliente
    @valor = valor
    @data = data
  end
end

class SAP
  def envia(nf)
  # NF para o SAP
  end
end

class NFDao
  def persiste(nf)
    # persiste NF
  end
end



