/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author joaom
 */
public class Curso {

    private int id;
    private String nome;
    private String requisito;
    private String ementa;
    private short carga_horaria;
    private double preco;

    public Curso(String nome, String requisito, String ementa, short carga_horaria, double preco) {
        this.nome = nome;
        this.requisito = requisito;
        this.ementa = ementa;
        this.carga_horaria = carga_horaria;
        this.preco = preco;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRequisito() {
        return requisito;
    }

    public void setRequisito(String requisito) {
        this.requisito = requisito;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public short getCarga_horaria() {
        return carga_horaria;
    }

    public void setCarga_horaria(short carga_horaria) {
        this.carga_horaria = carga_horaria;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public String toTable() {
        return "cursos";
    }
    
    public String toColumns() {
        return "nome, requisito, ementa, carga_horaria, preco";
    }
    
    public String toValues() {
        return "'" + nome + "', '" + requisito + "', '" + ementa + "', " + carga_horaria + ", " + preco;
    }
}
