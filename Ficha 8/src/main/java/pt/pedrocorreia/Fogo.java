package pt.pedrocorreia;

public class Fogo {
    Divisao divisao;

    public Fogo(Divisao divisao){
        this.divisao = divisao;
    }

    public Divisao getDivisao(){
        return divisao;
    }

    public void setDivisao(Divisao divisao){
        this.divisao = divisao;
    }
}
