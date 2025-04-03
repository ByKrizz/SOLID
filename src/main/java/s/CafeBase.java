/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package s;

/**
 *
 * @author chris
 */
public class CafeBase implements Bebida {

    @Override
    public String getDescripcion() {
        return "Café básico";
    }

    @Override
    public double calcularCosto() {
        return 5.0;
    }

}
