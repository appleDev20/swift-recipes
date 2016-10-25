enum Measure
{
    case Cup(Double)
    case Tablespoon (Double)
    case Ounce (Double)
    case Quantity (Int)
    
    func convertToOunces() -> Measure {
        switch (self) {
        case .Cup(let val):
            return Ounce(val * 8)
        case .Tablespoon(let val):
            return Ounce(val * 0.5)
        default:
            return self
        }
    }
}

var twoCups = Measure.Cup(2)

enum PreparationStyle {
    case Whip(String, Measure)
    case Boil(String, Measure)
    
    func instructions() -> String {
        switch (self) {
        case .Whip(let name, let measure):
            return "Whip \(name)"
        case .Boil(let name, let measure):
            return "Boil \(name)"
        }
    }
}

var eggs = PreparationStyle.Whip("Eggs", Measure.Quantity(2))
println(eggs.instructions())