# CBR

## Requisitos

    Base de casos -> colunas: atributos
                     linhas: nº de casos

## Como resolver um problema com CBR

    Nova query
    "Retrieve" -> procurar na base de casos os que mais se aproximam da query
                    Similaridade global >= LIMIAR
                    -> calculada com similaridades locais dos atributos -> peso dos atributos

    "Reuse" ->
    "Revise" -> adaptar query usando os casos conhecidos

    "Retain" -> guardar a query como novo caso se houver novidade