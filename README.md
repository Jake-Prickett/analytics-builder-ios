# AnalyticsBuilder Demo
Leverages Swift functionBuilders to construct an analytic event to fire. 

Example Syntax:
```swift
// Trackable Objects
let testObj1 = TestTrackable1()
let testObj2 = TestTrackable2()

// Populate parameters
func testParameterPopulator() -> [String: String] {
  return [
    "test1": "success",
    "test2": "fail",
    "test3": "name",
  ]
}

// Execute analytic!
Track {
    Action("test") // action vs. state
    Parameters(
        testObj1,
        testObj2
    )
    Parameters(testParameterPopulator)
    Parameter("John", "Wick")
    Debug() // Debug mode
}
```
