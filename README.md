# AnalyticsBuilder
## Work in Progress
Leverages Swift functionBuilders to construct an analytic event to fire. 

Example Syntax:
```swift
Track {
    Action("test") // action vs. state
    Parameters(
        TestTrackable1(),
        TestTrackable2()
    )
    Parameters(testParameterPopulator)
    Parameter("Jake", "Prickett")
    Debug() // Debug mode
}
```
