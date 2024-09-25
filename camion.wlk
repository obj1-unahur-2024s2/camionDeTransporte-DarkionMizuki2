/*
El camión
Se pide que se le pueda cargar y descargar cosas (de 1 a vez) y también cual es el peso total del camión, incluyendo su tara que es de 1000 kg.
También se necesita conocer si los pesos de todas las cosas cargadas en el camión son números impares.
Debemos poder consultar si hay alguna cosa que pesa un determinado valor.
Para un mejor control del tipo de peligro que puede representar la carga, se debe poder obtener la primer cosa cargada que tenga un determinado nivel de peligrosidad
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
 method hayAlgunaCosaQuePesa(unPeso)=cosas.any({unaCosa=>unaCosa.peso()==unPeso})
 method laPrimerCosaCargadaDebeTenerUnNivelDePeligrosidadDe(unNivelDePeligrosidad){
    cosas.first().nivelDePeligrosidad(unNivelDePeligrosidad)
 }

}

object cosaUno{
    var nivelDePeligrosidad=0
    method peso()=2 //supongamos que pesa 2 kilogramos
    method nivelDePeligrosidad(unNivel){
        nivelDePeligrosidad=unNivel
    }
     method nivelDePeligrosidad()=nivelDePeligrosidad //para proposito de prueba
}

object cosaDos{
    var nivelDePeligrosidad=0
    method nivelDePeligrosidad(unNivel){
        nivelDePeligrosidad=unNivel
    }
    method nivelDePeligrosidad()=nivelDePeligrosidad //para proposito de prueba
    method peso()=3 //supongamos que pesa 3 kilogramos
}