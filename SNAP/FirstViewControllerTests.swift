import XCTest
@testable import SNAP

class FirstViewControllerTests: TestCase {

  func test_firstViewController() {
    recordMode = true

    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let identifier = String(describing: FirstViewController.self)
    let viewContoller = storyboard
      .instantiateViewController(withIdentifier: identifier)

    FBSnapshotVerifyView(viewContoller.view)
  }
}
