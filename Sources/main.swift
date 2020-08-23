/*
 
 Example executable that demonstrates functionBuilders as a means of writing
 declarative analytic statements.
 
 */
struct DeclarativeAnalytics {
  static var testObject1 = TestTrackable1()
  static var testObject2 = TestTrackable2()
  
  static func fireAnalytic() {
    // Example declarative syntax for analytic tracking
    Track {
      Action("test") // action vs. state
      Parameters(
        testObject1,
        testObject2
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
