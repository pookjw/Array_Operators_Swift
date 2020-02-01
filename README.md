# Array_Operators_Swift

![1](https://live.staticflickr.com/65535/49466511222_f3736c08b9_o.png)

Image from [Swift](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)

Extension of Fundamental Set Operations for Array, without converting Array to Set.

## Examples

```swift
let a = [1, 2, 3, 4, 5, 5, 5]
let b = [4, 5, 5, 3, 8, 9]

print(a.intersection(b)) // [3, 4, 5, 5]
print(a.symmetricDifference(b)) // [1, 2, 5, 8, 9]
print(a.union(b).sorted()) // [1, 2, 3, 4, 5, 5, 5, 8, 9]
print(a.subtracting(b)) // [1, 2, 5]
```
