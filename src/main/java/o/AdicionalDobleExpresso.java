/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package o;

import s.Bebida;

/**
 *
 * @author chris
 */
public class AdicionalDobleExpresso extends DecoratorBebida{
    public AdicionalDobleExpresso(Bebida bebida) {
        super(bebida);
    }

    @Override
    public String getDescripcion() {
        return bebida.getDescripcion() + ", con Doble Expresso";
    }

    @Override
    public double calcularCosto() {
        return bebida.calcularCosto() + 2.10;
    }
}
