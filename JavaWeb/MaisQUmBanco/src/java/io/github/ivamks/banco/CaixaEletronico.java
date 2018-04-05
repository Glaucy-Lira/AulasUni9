/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.github.ivamks.banco;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author internet
 */
@WebServlet
public class CaixaEletronico extends HttpServlet{
    
    private String valorSacado;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        valorSacado = req.getParameter("valorSacado");      
    }   
    
    public String sacar(){
        
        int saque = Integer.parseInt(valorSacado);
        int cedulas[] = {100, 50, 20, 10, 5, 2};  
        int[] aux = new int[6];  
        int n100, n50, n20, n10, n5, n2;  
  
        for (int i = 0; i < cedulas.length; i++) {  
            if (saque >= cedulas[i]) {  
                aux[i] = saque / cedulas[i];  
                saque = saque % cedulas[i];  
                if (saque >= cedulas[i]) {  
                    aux[i] = saque / cedulas[i];  
                    saque = saque % cedulas[i];                     
                } 
            }
        } 
        
                
        n100 = aux[0];  
        n50 = aux[1];  
        n20 = aux[2];  
        n10 = aux[3];  
        n5 = aux[4];  
        n2 = aux[5];  
        
        String s= "notas de 100 = "+n100+" <br> "
                + "notas de 50 = "+n50+"<br>"
                + "notas de 20 = "+n20+"<br>"
                + "notas de 10 = "+n10+"<br>"
                + "notas de 5 = "+n5+"<br>"  
                + "notas de 2 = "+n2+"<br>";
        if(saque !=0 )
            s+="Taxa de saque R$ 1,00";
        return  s ;  
    }

    public String getValorSacado() {
        return valorSacado;
    }

    public void setValorSacado(String valorSacado) {
        this.valorSacado = valorSacado;
    }
    
    
    
}
