/*
 
 Example executable that demonstrates functionBuilders as a means of writing
 declarative analytic statements.
 
 */
struct DeclarativeAnalytics {
    var testObject1 = TestTrackable1()
    var testObject2 = TestTrackable2()
    
    static func fireAnalytic() {
        // Example declarative syntax for analytic tracking
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
    }

    // Example populator method for building parameters and passing

    static func testParameterPopulator() -> [String: String] {
        return [
            "test1": "success",
            "test2": "fail",
            "test3": "name",
        ]
    }
}

DeclarativeAnalytics.fireAnalytic()
