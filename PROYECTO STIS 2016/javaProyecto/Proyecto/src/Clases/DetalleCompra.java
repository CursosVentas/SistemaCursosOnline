/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Jose
 */
public class DetalleCompra {
    private Integer codCompra;

    private String descripcion;

    private String numTarjeta;

    private String marcaTarjeta;

    private double totalPagar;

    private String fechaCancelar;

    public DetalleCompra() {
    }

    public DetalleCompra(Integer codCompra, String descripcion, String numTarjeta, String marcaTarjeta, double totalPagar, String fechaCancelar) {
        this.codCompra = codCompra;
        this.descripcion = descripcion;
        this.numTarjeta = numTarjeta;
        this.marcaTarjeta = marcaTarjeta;
        this.totalPagar = totalPagar;
        this.fechaCancelar = fechaCancelar;
    }

    public Integer getCodCompra() {
        return codCompra;
    }

    public void setCodCompra(Integer codCompra) {
        this.codCompra = codCompra;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getNumTarjeta() {
        return numTarjeta;
    }

    public void setNumTarjeta(String numTarjeta) {
        this.numTarjeta = numTarjeta;
    }

    public String getMarcaTarjeta() {
        return marcaTarjeta;
    }

    public void setMarcaTarjeta(String marcaTarjeta) {
        this.marcaTarjeta = marcaTarjeta;
    }

    public double getTotalPagar() {
        return totalPagar;
    }

    public void setTotalPagar(double totalPagar) {
        this.totalPagar = totalPagar;
    }

    public String getFechaCancelar() {
        return fechaCancelar;
    }

    public void setFechaCancelar(String fechaCancelar) {
        this.fechaCancelar = fechaCancelar;
    }
    
}
