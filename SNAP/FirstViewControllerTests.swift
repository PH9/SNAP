import XCTest
@testable import SNAP

class FirstViewControllerTests: TestCase {

  override func setUp() {
    recordMode = true
  }

  func test_firstViewController() {
    let storyboard = UIStoryboard(
      name: "First",
      bundle: Bundle.init(identifier: "SNAP"))
    let viewContoller = storyboard
      .instantiateViewController(withIdentifier: "FirstViewController")

    FBSnapshotVerifyView(viewContoller.view)
  }
}
