// Extension for Array where Element: Equatable
extension Array where Element: Equatable {
    func intersection(_ arr: Array<Element>) -> Array<Element> {
        var result: [Element] = []
        var arr = arr
        for a in self {
            if let idx = arr.firstIndex(of: a) {
                arr.remove(at: idx)
                result.append(a)
            }
        }
        return result
    }
    
    func union(_ arr: Array<Element>) -> Array<Element> {
        var result = self + arr
        for a in self.intersection(arr) {
            if let idx = result.firstIndex(of: a) {
                result.remove(at: idx)
            }
        }
        return result
    }
    
    func symmetricDifference(_ arr: Array<Element>) -> Array<Element> {
        var result = self + arr
        for a in self.intersection(arr) {
            if let idx = result.firstIndex(of: a) {
                result.remove(at: idx)
            }
            if let idx = result.firstIndex(of: a) {
                result.remove(at: idx)
            }
        }
        return result
    }
    
    func subtracting(_ arr: Array<Element>) -> Array<Element> {
        var result = self
        for a in self.intersection(arr) {
            if let idx = result.firstIndex(of: a) {
                result.remove(at: idx)
            }
        }
        return result
    }
}

// Test
let a = [1, 2, 3, 4, 5, 5, 5]
let b = [4, 5, 5, 3, 8, 9]

print(a.intersection(b)) // [3, 4, 5, 5]
print(a.symmetricDifference(b)) // [1, 2, 5, 8, 9]
print(a.union(b).sorted()) // [1, 2, 3, 4, 5, 5, 5, 8, 9]
print(a.subtracting(b)) // [1, 2, 5]
