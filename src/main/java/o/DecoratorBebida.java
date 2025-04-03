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
public abstract class DecoratorBebida implements Bebida {

    protected Bebida bebida;

    public DecoratorBebida(Bebida bebida) {
        this.bebida = bebida;
    }
}
