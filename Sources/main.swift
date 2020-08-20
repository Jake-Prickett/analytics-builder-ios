
// Declarative Syntax for analytic tracking

Track {
    Action("test")
    Parameters(
        TestTrackable1(),
        TestTrackable2()
    )
    Parameters(testParameterPopulator)
    Parameter("Jake", "Prickett")
    Debug()
}

// Example populator method for building parameters and passing

func testParameterPopulator() -> [String: String] {
    return [
        "test1": "success",
        "test2": "fail",
        "test3": "name",
    ]
}

// Created trackable objects that define what parameters to track

struct TestTrackable1: AnalyticTrackable {
    var test1 = "TestTrackable1"
    var test2 = 12345
    
    var parameters: [String : String] {
        [test1: "\(test2)"]
    }
}

struct TestTrackable2: AnalyticTrackable {
    var test1 = "TestTrackable2"
    var test2 = 12345
    
    var parameters: [String : String] {
        [test1: "\(test2)"]
    }
}
