# tips
#### built for 2016 CodePath Pre-work

tips is a iOS application that calculates tip based on input bill amount and tip percentage, inputed by either segmented control or slider control

|Created|Tuesday, December 8, 2015 at 6:42 PM|
|-|-|
|**Last Commit**|**Sunday, December 8, 2015 at 8:03 PM**|

## Table of Contents
* [Features](#features)
* [Video Walkthrough](#video)
* [Screens](#screens)
* [Notes](#notes)
  * [Lessons Learned](#lessons)
  * [Past Skills Used](#past)
  * [Design Inspiration](#design)
  * [Images Used](#images)
* [Submission Checklist](#checklist)
* [CodePath ReadMe](#codePath)
  * [User Stories](#user)
  * [Video Walkthrough](#walk)
  * [Notes](#notesCode)
  * [License](#license)

---
<a id="features"></a>
## **Features**
* **Ability to choose between 2 kinds of percentage input**
  1. ***Slider***
    * *Can set defaults:*
      * Minimum value of slider
      * Maximum value of slider
      * Default value of slider
  2. ***Segmented Controls***
    * Set to 18, 20, & 22
* **Split the bill**
  *  Split between parties of 2, 3, 4
* **International Formatting (Region Based)**
* **Loading Screen Animation**
* **Animation upon inputting text**

---
<a id="video"></a>
## **Video Walkthrough**
![gif walkthrough](fullVideoCap.gif)
### HD walkthrough available [on YouTube](https://youtu.be/PGZw1ge-9TI_)

---
<a id="screens"></a>
## **Screens**

![both screens](ScreensFull.png)

#### Main Screen
![screen one](IMG_4737.jpg)

#### Settings Screen
![screen two](IMG_4738.jpg)

---
<a id="notes"></a>
## Notes
tips is my first, fully functional application that is not simply a front-end mock-up. Most of my time was spent understanding Auto-Layout, creating the UI, and configuring the Swift defaults, switches, etc.

<a id="lessons"></a>
### Lessons Learned
* iOS development
* XCode formatting
* Defaults
* iOS UIComponents
  * Pickers (See settings)
  * Sliders
  * Segmented Controller
* Using images view as video
* Formatting MarkDown
*
<a id="past"></a>
### Past Skills Used
* Animation
* Basic Programming Skills
* UI Design

<a id="design"></a>
#### Design Inspiration
Inspiration for slider / faces design from [Corey Haggard](https://dribbble.com/shots/1370966-Tips)

<a id="images"></a>
#### Images Used

<img src="/tips/Assets.xcassets/Group2.imageset/two201.png" height="48">
<img src="/tips/Assets.xcassets/Group3.imageset/group58.png" height="53">
<img src="/tips/Assets.xcassets/Group4.imageset/group57.png" height="68">
<img src="/tips/Assets.xcassets/Smile.imageset/emoticon85.png" height="52">
<img src="/tips/Assets.xcassets/Frown.imageset/sad35.png" height="52">

Icons made by [freepick](http://www.flaticon.com/authors/freepik) from [flaticon.com](www.flaticon.com)


---

---

<a id="checklist"></a>
## **CodePath Submission Checklist**
This application was made as prework for admission to CodePath, description for which are [found here](http://courses.codepath.com/snippets/intro_to_ios/prework_university.md)

#### Following is the submission checklist
> Please review the following checklist to ensure your submission is valid:

>> 1. Did you implement both the TipViewController and the SettingsViewController?
2. Did you successfully push your code to github? Can you see the code on github?
3. Did you add a README which includes a GIF walkthrough of the app's functionality?
4. Did you create an issue on the repo and include /cc @codepathreview in the issue body?

#### CheckList
|  | Requirement | Done? |
|---|-------------|-------|
| 1 | TipViewController | YES |
| 1 | SettingsViewController | YES |
| 2 | Pushed to GitHub | YES |
| 3 | Added README | YES |
| 4 | Create Issue | NO |

---
<a id="codePath"></a>
# ReadME Template from CodePath
# Pre-work - *tips*

**tips** is a tip calculator application for iOS.

Submitted by: **Takashi Wickes**

Time spent: **40** hours spent in total

<a id="user"></a>
## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
- [x] Settings page to change the default tip percentage.
- [x] UI animations
- [ ] Remembering the bill amount across app restarts (if <10mins)
- [x] Using locale-specific currency and currency thousands separators.
- [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.
  - *Not set to allow for bill splitter*

The following **additional** features are implemented:

- [x] Slider Tip Controller
- [x] UI Improvements
- [x] Loading Screen Animation
- [x] Application Icon
- [x] Settings Switch to change tip controls
- [x] Bill splitter
- [x] Change Min and Max of slider (Saved in default)
- [x] Auto-layout

<a id="walk"></a>
## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='fullVideoCap.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with Quicktime & [LiceCap](http://www.cockos.com/licecap/).

#### HD walkthrough available [on YouTube](https://youtu.be/PGZw1ge-9TI_)

<a id="notesCode"></a>
## Notes

Describe any challenges encountered while building the app.
Upon starting the application, I had only played with front-end iOS development at HackDuke, not understanding Swift

I added lots of additions to this assignment, curious to play around more with iOS, and the different UIComponents of XCode

For more notes, [check above for the notes of this readme](#notes)

<a id="license"></a>
## License

    Copyright [2015] [Adam Takashi Wickes]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
