import XCTest
@testable import LaoshuModels

final class laoshu_modelsTests: XCTestCase {
    let textConverter = TextConverter()
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(laoshu_models().text, "Hello, World!")
    }
    
    func testTextConverter() {
        let givenString = """
        [m1]1) свободный, [c red]вольный[/c], несвязанный ([c][i]напр.[/c] формой[/i])[/m][m1]2) освободиться от стеснений (уз; [c][i]напр.[/c] в творчестве[/i]); оторваться (уйти) от оков ([c][i]напр.[/c] реальности[/i]); отрыв ([i]от[c] чего-л.[/c][/i])[/m]
        """
        
        let expectedString = """
        <p class="margin1">1) свободный, <span class="color red">вольный</span>, несвязанный (<span class="color"><i>напр.</span> формой</i>)</p><p class="margin1">2) освободиться от стеснений (уз; <span class="color"><i>напр.</span> в творчестве</i>); оторваться (уйти) от оков (<span class="color"><i>напр.</span> реальности</i>); отрыв (<i>от<span class="color"> чего-л.</span></i>)</p>
        """
        
        
        let result = textConverter.dslToHtml(givenString)
        
        XCTAssertEqual(result, expectedString)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
