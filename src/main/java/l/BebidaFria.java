/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package l;

import s.Bebida;

/**
 *
 * @author chris
 */
public class BebidaFria implements Bebida {

    @Override
    public String getDescripcion() {
        return "Bebida fría";
    }

    @Override
    public double calcularCosto() {
        return 6.0;
    }

}
