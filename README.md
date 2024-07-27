# Timed-Browsing-for-Mac
(Firefox Auto-Close Script)

This script is designed to automatically close the Firefox browser after a specified amount of time, with additional features such as user reminders and notifications. It's particularly useful for setting a time limit on browsing sessions.

## Features

- **User Prompt**: Asks the user what they want to do today before starting.
- **Session Timing**: Prompts the user to input the desired duration before Firefox is closed.
- **Activity Planning**: Users can enter activities they plan to do after the browsing session.
- **Final Reminder**: A notification is displayed 30 seconds before Firefox is closed.
- **Extend Session Option**: Provides an option to extend the session by one minute.
- **Custom Firefox Profile**: The script can launch Firefox with a specified user profile.

## Usage

1. **Clone the Repository**:

   First, clone this repository to your local machine:

   ```bash
   git clone https://github.com/YourUsername/YourRepositoryName.git
   cd YourRepositoryName
Make the Script Executable:

You need to make the script executable to run it:

bash
複製程式碼
chmod +x script.sh
Run the Script:

Execute the script:

bash
複製程式碼
./script.sh
Example
When the script runs, it will:

Ask, "Hey there, what u want today :)".
Wait for the user to input "chill" to proceed.
Prompt the user to enter the duration in minutes for the Firefox session.
Ask the user to enter planned activities after the session, with predefined slots:
1: [User Input]
2: [User Input]
3: [User Input]
Launch Firefox with the specified profile.
Notify the user 30 seconds before the browser is automatically closed.
Optionally extend the session by one minute if the user chooses.
Dependencies
macOS: The script uses macOS-specific features like osascript for notifications and dialogs.
Bash: The script is written in Bash.
Contributing
If you'd like to contribute to this project, please fork the repository and use a feature branch. Pull requests are welcome.

License
This project is licensed under the MIT License. See the LICENSE file for details.
