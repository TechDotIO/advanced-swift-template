import XCTest
@testable import swift_template
import FileUtils
 
class swift_templateTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(swift_template().countAllStars(galaxies: 2, 3), 5)
        XCTAssertEqual(swift_template().countAllStars(galaxies: 9, -3), 6)
    }

    override func tearDown() {
        super.tearDown()
        if Path.exists("/project/target/Sources/swift_template.swift") {
            do {
                if testRun!.failureCount > 0 {
                    print("TECHIO> message --channel Oops! Try Again 🐞");
                    print("TECHIO> message --channel 'Hint 💡' Did you properly accumulate all stars into 'totalStars'? 🤔");

                } else {
                    let content = try File.read(atPath: "/project/target/Sources/swift_template.swift")
                    if content.range(of:"galaxies.reduce") != nil { 
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \"* ● ¸ .　¸. :° ☾ ° 　¸. ● ¸ .　　¸.　:. • \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \"           　★ °  ☆ ¸. ¸ 　★　 :.　 .   \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \"__.-._     ° . .　　　　.　☾ ° 　. *   ¸ .\"");
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \"'-._\\7'      .　　° ☾  ° 　¸.☆  ● .　　　\"");
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \" /'.-c    　   * ●  ¸.　　°     ° 　¸.    \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \" |  /T      　　°     ° 　¸.     ¸ .　　  \"");
			print("TECHIO> message --channel 'My personal Yoda, you are. 🙏' \"_)_/LI\"\r\n");
                    }
                    else {
                        print("TECHIO> message --channel 'Kudos 🌟' Good Job! Try using array.reduce")
                    }
                }
            } catch {
                print(error)
            }
        }
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
