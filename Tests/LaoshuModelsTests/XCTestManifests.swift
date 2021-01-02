import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(laoshu_modelsTests.allTests),
    ]
}
#endif
