QUIZ BOWL DESKTOP - WINDOWS

INSTALL ONCE
1. Right-click Quizbowl-Windows.zip and choose Extract All.
2. Open the extracted Quizbowl-Windows folder.
3. Double-click Install.cmd and follow the prompt.
4. Use the Quiz Bowl Desktop shortcut on your desktop or Start menu.

Requirements: Windows 10 or 11 with Microsoft Edge and Windows PowerShell.
No administrator access, account, subscription, or package download is needed.
If your organization blocks command scripts, ask its IT team; do not change
security policy to run this package.

HOW IT WORKS
This is a desktop launcher using Microsoft Edge in a separate app window,
not a standalone compiled EXE. The study content works offline. External
source links need internet. No study progress is uploaded by the app.

The installer puts the app in:
  %LOCALAPPDATA%\QuizBowlDesktop
Its dedicated Edge profile, including saved progress, is in:
  %LOCALAPPDATA%\QuizBowlDesktop\Profile

Always use the installed shortcut. Opening quizbowl.html directly uses a
different browser profile and may show different progress. You can delete
the downloaded ZIP and extracted folder after installing.

AUTOMATIC SAVING
The app saves flashcard direction and position, practice answers and position,
study marks, scores, settings, and question history automatically. Matches
resume paused. Look for 'Saved on this computer' near the top.
You do not need to save copies when closing. Use one app window at a time.
Progress is stored using Edge's local storage in the dedicated profile.
Removing that profile, clearing its data, or device policies that clear
storage can erase progress. Export progress is an optional backup.

BRING OVER EXISTING PROGRESS
In your old tool, choose Export progress. In this app's Progress tab, use
Import progress to select that JSON file. This one-time transfer is optional;
the desktop app cannot automatically read another browser's private storage.

UPDATING
Close Quiz Bowl Desktop and rerun Install.cmd from the new extracted package.
It updates the app files without deleting the Profile folder.

CHECK AFTER INSTALLING
Start a practice round and type an answer. Close the app, then reopen using
the desktop shortcut. The same question and typed answer should return.
If automatic saving shows an error, export progress before closing.

REMOVAL
Remove the desktop and Start menu shortcuts. Removing the QuizBowlDesktop
folder also removes your local progress; export first if you want to keep it.

CONTENTS AND VERIFICATION
Includes the existing 744 topics, flashcards in both directions, varied
practice rounds, matches, and 80 economics graph lessons. Graphs represent
the models and assumptions shown in their explanations, not universal
empirical predictions. This package does not change those lesson models.
Session restoration and question variation were tested in a simulated
JavaScript environment. The Windows installer and Edge window still need
verification on a Windows computer; they could not be run in the build
environment.
