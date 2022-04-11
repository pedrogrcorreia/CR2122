# CBR

## Requisitos

    Base de casos -> colunas: atributos
                     linhas: nº de casos

## Como resolver um problema com CBR

    Nova query
    "Retrieve" -> procurar na base de casos os que mais se aproximam da query
                    Similaridade global >= LIMIAR
                    -> calculada com similaridades locais dos atributos -> peso dos atributos

    "Reuse" -> usar regressão liniar para ajustar o valor do 'Price' introduzido na query
                    - variavel dependente: preço (y)
                    - variaveis independentes: nº de pessoas (x1), duração (x2)
                    y = b0 + b1 * x1 + b2 * x2;
                    x = [1 np1 dur1
                         1 np2 dur2
                         1 np3 dur3
                         ...
                        ]
                        b = x\y
    "Revise" -> adaptar query usando os casos conhecidos
             -> perguntas/respostas ao utilizador sobre manter/alterar os valores da query

    "Retain" -> guardar a query como novo caso se houver novidade