/*
El camión
Se pide que se le pueda cargar y descargar cosas (de 1 a vez) y también cual es el peso total del camión, incluyendo su tara que es de 1000 kg.
También se necesita conocer si los pesos de todas las cosas cargadas en el camión son números impares.
*/

object camion {
 const cosas=[]
 method cargar(algo){
    cosas.add(algo)
 }
 method descargar(algo){
    cosas.remove(algo)
 }
 method peso()=cosas.sum({unaCosa=>unaCosa.peso()})+1000
 method saberSiLosPesosDeTodasLasCosasSonNumerosImpares()=cosas.all({unaCosa=>self.esImpar(unaCosa.peso())})
 method esImpar(unPeso)=unPeso%2!=0
}

object cosaUno{
    method peso()=2 //supongamos que pesa 2 kilogramos
}

object cosaDos{
    method peso()=3 //supongamos que pesa 3 kilogramos
}