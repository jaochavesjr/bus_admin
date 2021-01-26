module ApplicationHelper

  def humanize_boolean(value)
    case value
    when true
      "Sim"
    when false
      "Não"
    when nil
      "Indefinido"
    else
      "Inválido"
    end
  end

end
