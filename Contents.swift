//:Minireto 2

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
}
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades.init(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena : String ){
        
        var actual : Int
        
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = Velocidades.Apagado
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return (actual, velocidadEnCadena)
    }
    

    func cambioDeVelocidad2() -> ( actual : Int, velocidadEnCadena : String ){
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return (actual, velocidadEnCadena)
    }
    
}

var auto = Auto()
var veloc : (Int, String)

for i in 1...20{
    veloc = auto.cambioDeVelocidad()
    print("\(veloc.0) , \(veloc.1)")
}