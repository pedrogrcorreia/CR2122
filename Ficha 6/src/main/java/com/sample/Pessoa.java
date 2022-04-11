package com.sample;

public class Pessoa {
	private String nome;
	private int idade;
	private char sexo;
	private String comidaPref;
	private double rendimento;
	
	
	public Pessoa(String nome, int idade, char sexo, String comidaPref, double rendimento) {
		this.nome = nome;
		this.idade = idade;
		this.sexo = sexo;
		this.comidaPref = comidaPref;
		this.rendimento = rendimento;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setIdade(int idade) {
		this.idade = idade;
	}
	
	public int getIdade() {
		return idade;
	}
	
	public void setSexo(char sexo) {
		this.sexo = sexo;
	}
	
	public char getSexo() {
		return sexo;
	}
	
	public void setComidaPref(String comidaPref) {
		this.comidaPref = comidaPref;
	}
	
	public String getComidaPref() {
		return comidaPref;
	}
	
	public void setRendimento(double rendimento) {
		this.rendimento = rendimento;
	}
	
	public double getRendimento() {
		return rendimento;
	}
}

