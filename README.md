# 🚀 Swift Testing


<details>
    <summary><h2>Clear, expressive API</h2></summary>
    Swift Testing has a clear and expressive API built using macros, so you can declare complex behaviors with a small amount of code. The #expect API uses Swift expressions and operators, and captures the evaluated values so you can quickly understand what went wrong when a test fails. Parameterized tests help you run the same test over a sequence of values so you can write less code. And all tests integrate seamlessly with Swift Concurrency and run in parallel by default.
    
    ```
    Test("Continents mentioned in videos", arguments: [
    "A Beach",
    "By the Lake",
    "Camping in the Woods"
    ])
    func mentionedContinents(videoName: String) async throws {
    let videoLibrary = try await VideoLibrary()
    let video = try #require(await videoLibrary.video(named: videoName))
    #expect(video.mentionedContinents.count <= 3)
    }




    ```
  </details> 


  <details>
    <summary><h2>Custom test behaviors</h2></summary>
    You can customize the behavior of tests or test suites using traits specified in your code. Traits can describe the runtime conditions for a test, like which device a test should run on, or limit a test to certain operating system versions. Traits can also help you use continuous integration effectively by specifying execution time limits for your tests.
    
    ```
    @Test(.enabled(if: AppFeatures.isCommentingEnabled))
    func videoCommenting() async throws {
    let video = try #require(await videoLibrary.video(named: "A Beach"))
    #expect(video.comments.contains("So picturesque!"))
       }




    ```
  </details> 



  <details>
    <summary><h2>Easy and flexible organization</h2></summary>
    Swift Testing provides many ways to keep your tests organized. Structure related tests using a hierarchy of groups and subgroups. Apply tags to flexibly manage, edit, and run tests with common characteristics across your test suite, like tests that target a specific device or use a specific module. You can also give tests a descriptive name so you know what they’re doing at a glance.
    
    ```
    @Test("Check video metadata",
      .tags(.metadata))
    func videoMetadata() {
    let video = Video(fileName: "By the Lake.mov")
    let expectedMetadata = Metadata(duration: .seconds(90))
    #expect(video.metadata == expectedMetadata)
    }




    ```
  </details> 
