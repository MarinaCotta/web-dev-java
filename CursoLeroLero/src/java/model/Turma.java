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
public class Turma {

    private int id;
    private int instrutores_id;
    private int cursos_id;
    private String data_inicio;
    private String data_final;
    private short carga_horaria;

    public Turma(int id, int instrutores_id, int cursos_id, String data_inicio, String data_final, short carga_horaria) {
        this.id = id;
        this.instrutores_id = instrutores_id;
        this.cursos_id = cursos_id;
        this.data_inicio = data_inicio;
        this.data_final = data_final;
        this.carga_horaria = carga_horaria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getInstrutores_id() {
        return instrutores_id;
    }

    public void setInstrutores_id(int instrutores_id) {
        this.instrutores_id = instrutores_id;
    }

    public int getCursos_id() {
        return cursos_id;
    }

    public void setCursos_id(int cursos_id) {
        this.cursos_id = cursos_id;
    }

    public String getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(String data_inicio) {
        this.data_inicio = data_inicio;
    }

    public String getData_final() {
        return data_final;
    }

    public void setData_final(String data_final) {
        this.data_final = data_final;
    }

    public short getCarga_horaria() {
        return carga_horaria;
    }

    public void setCarga_horaria(short carga_horaria) {
        this.carga_horaria = carga_horaria;
    }

}
