# feedforwardnet - MATLAB

## Alterar função de treino
    nome_rede.trainFcn = funcao_treino -> string;

## Alterar funções de ativação
    nome_rede.layers{k}.transferFcn = funcao_ativacao -> string; 

    k -> camada a mudar

    Numa rede default:
        1 -> camada escondida
        2 -> camada de saída
    
    Havendo N camadas escondidas:
        1 -> camada escondida 1
        2 -> camada escondida 2
        ...
        N -> camada escondida N
        N+1 -> camada de saída

## Mudar rede na criação
    net = feedforwardnet([10 5]) -> 2 camadas escondidas, a primeira com 10 neurónios e a segunda com 5