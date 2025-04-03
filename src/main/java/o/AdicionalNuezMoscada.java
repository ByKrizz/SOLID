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
public class AdicionalNuezMoscada extends DecoratorBebida {
    public AdicionalNuezMoscada(Bebida bebida) {
        super(bebida);
    }

    @Override
    public String getDescripcion() {
        return bebida.getDescripcion() + ", con Nuez Moscada";
    }

    @Override
    public double calcularCosto() {
        return bebida.calcularCosto() + 1.35;
    }
}
