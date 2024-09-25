/*
El camión
Se pide que se le pueda cargar y descargar cosas (de 1 a vez) y también cual es el peso total del camión, incluyendo su tara que es de 1000 kg.
*/

object camion {
 const cosas=[]
 method cargar(algo){}
 method descargar(algo){}
 method peso()=cosas.sum({p=>p.peso()})+1000
}