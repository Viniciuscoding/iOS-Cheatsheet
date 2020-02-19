# iOS-Cheatsheet

Cheatsheet from basic to advanced iOS documentation because Apples' documentation is horrible and lack examples

**Application Lifecycle**
```
         Not Running
             |
             ↓
         Foreground  
    |------------------|     
|---|---> Inactive     |
|   |        ↑         |
|   |        |         |
|   |        ↓         |
|   |      Active      |
|   |------------------|
|      
|------> Background
             ↑
             |
             ↓ 
         Supended
```

Navigator Panel keyboard shortcuts cycle through the different navigators.
```
⌘ + 0 = Show or Hide the Navigator Panel
⌘ + 1 = Project
⌘ + 2 = Source Control
⌘ + 3 = Symbol
⌘ + 4 = Find
⌘ + 5 = Issue
⌘ + 6 = Test
⌘ + 7 = Debug
⌘ + 8 = Breakpoint
⌘ + 9 = Report
```
**The Utility Area keyboard shortcuts**
```
⌥ + ⌘ + 0 = Show or Hide the Utility Area
⌥ + ⌘ + 1 = File Inspector
⌥ + ⌘ + 2 = Quick Help Inspector
⌥ + ⌘ + 3 = Identity Inspector
⌥ + ⌘ + 4 = Attributes Inspector
⌥ + ⌘ + 5 = Size Inspector
⌥ + ⌘ + 6 = Connections Inspector
```

**View Controller Lifecycle**
```
ViewWillAppear --------> Appearing ----------> ViewDidAppear
     ↑                                               |
     |                                               |
     |                                               ↓
Disappeared                                      Appeared
     ↑                                               |
     |                                               |
     |                                               ↓
ViewDidDisappear <----- Disappearing <------ ViewWillDisappear 
```

**UIBotton**
Buttons have five states that define their appearance:
```
1. default            # button is enabled
2. highlighted        # button was clicked
3. focused
4. selected
5. disabled
```















## Visually Ipaired Users
This is the information VoiceOver speaks to users. Visually impaired users can rely on VoiceOver to help them use their devices.

## GUIDELINES - SWIFT Internationalization and Localization
https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/Introduction/Introduction.html#//apple_ref/doc/uid/10000171i



