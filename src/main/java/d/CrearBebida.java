/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package d;

import o.AdicionalCanela;
import o.AdicionalCaramelo;
import o.AdicionalChocolate;
import o.AdicionalCremaBatida;
import o.AdicionalDobleExpresso;
import o.AdicionalJarabeAvellana;
import o.AdicionalLeche;
import o.AdicionalNuezMoscada;
import o.AdicionalVainilla;
import s.Bebida;
import s.CafeBase;

/**
 *
 * @author chris
 */
public class CrearBebida {

    public Bebida crearBebida(boolean leche, boolean chocolate, boolean canela, boolean caramelo, boolean cremabatida, boolean dobleexpresso, boolean jarabeavellana, boolean nuezmoscada, boolean vainilla) {
        Bebida bebida = new CafeBase();
        if (leche) {
            bebida = new AdicionalLeche(bebida);
        }
        if (chocolate) {
            bebida = new AdicionalChocolate(bebida);
        }
        if (canela) {
            bebida = new AdicionalCanela(bebida);
        }
        if (caramelo) {
            bebida = new AdicionalCaramelo(bebida);
        }
        if (cremabatida) {
            bebida = new AdicionalCremaBatida(bebida);
        }
        if (dobleexpresso) {
            bebida = new AdicionalDobleExpresso(bebida);
        }
        if (jarabeavellana) {
            bebida = new AdicionalJarabeAvellana(bebida);
        }
        if (nuezmoscada) {
            bebida = new AdicionalNuezMoscada(bebida);
        }
        if (vainilla) {
            bebida = new AdicionalVainilla(bebida);
        }
        return bebida;
    }
}
