/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.uninove.carro;

/**
 * Nomes:   Glaucyany Lira da Cruz, RA: 916116774
 *          Ivam Henrique Marques dos Santos, RA: 316107371
 * 
 * 
 * 
 */
public class Carro {
    private String fabricante;
    private String modelo;
    private Float capacidadeTanque;
    private Float consumo;
    private Float autonomia;
    
    public Carro() {
    }  
    
    public void calcularAutonomia(){
        autonomia = capacidadeTanque * consumo;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public Float getCapacidadeTanque() {
        return capacidadeTanque;
    }

    public void setCapacidadeTanque(Float capacidadeTanque) {
        this.capacidadeTanque = capacidadeTanque;
    }

    public Float getConsumo() {
        return consumo;
    }

    public void setConsumo(Float consumo) {
        this.consumo = consumo;
    }

    public Float getAutonomia() {
        return autonomia;
    }

    public void setAutonomia(Float autonomia) {
        this.autonomia = autonomia;
    }

       
    
}
