import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(laoshu_coreTests.allTests),
    ]
}
#endif
