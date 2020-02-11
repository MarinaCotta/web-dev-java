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
public class Instrutor extends Usuario {

    private String email;
    private int valor_hora;
    private String experiencia;

    public Instrutor(int id, String nome, String login, String senha, String email, int valor_hora, String experiencia) {
        super(id, nome, login, senha);
        this.email = email;
        this.valor_hora = valor_hora;
        this.experiencia = experiencia;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getValor_hora() {
        return valor_hora;
    }

    public void setValor_hora(int valor_hora) {
        this.valor_hora = valor_hora;
    }

    public String getExperiencia() {
        return experiencia;
    }

    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }

}
