
// Declarative Syntax for analytic tracking

Track {
    Action("test")
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
