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
public class AdicionalVainilla extends DecoratorBebida{
    public AdicionalVainilla(Bebida bebida) {
        super(bebida);
    }

    @Override
    public String getDescripcion() {
        return bebida.getDescripcion() + ", con Vainilla";
    }

    @Override
    public double calcularCosto() {
        return bebida.calcularCosto() + 0.85;
    }
}
