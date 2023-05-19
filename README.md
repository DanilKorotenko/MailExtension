Prerequisites
-------------
1. Launch this sample
2. Ensure that mail extension from this sample is loaded to Mail app.


Issue #1
--------

Steps to reproduce:
1. Create new message with "To:", "Subject:" and some content.
2. Press "Send" button.
3. Wait 10 seconds

Actual result:
Nothing is happen once "Send" button is pressed.
After 10 seconds message is being sent.

Expected result:
Some notice is expected that MailExtension is working.


Issue #2 (crash)
----------------

Steps to reproduce:
1. Create new message with "To:", "Subject:" and some content.
2. Press "Send" button.
3. Notice that nothing is happening.
4. Close message window.
5. Press "Don't save" button in "Save this message as a draft?" window.

Actual result:
After 10 seconds Mail app is crashed.

Expected result:
Some notice is expected that MailExtension is working.
Mail app should not crash.