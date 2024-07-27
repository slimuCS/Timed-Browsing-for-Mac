# Firefox Auto-Close Script

This script is designed to automatically close the Firefox browser after a specified amount of time, with additional features such as user reminders and notifications. It is particularly useful for setting a time limit on browsing sessions.

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
   ```

2. **Make the Script Executable**:

   You need to make the script executable to run it:

   ```bash
   chmod +x script.sh
   ```

3. **Run the Script**:

   Execute the script:

   ```bash
   ./script.sh
   ```

## Customization

The script contains several customizable elements:

- **User Prompt Response**: The script expects the user to input "chill" to proceed with the operation. You can modify this expected input by changing the comparison in the script:

  ```bash
  if [ "$response" != "chill" ]; then
      echo "Byeee(- -)/"
      exit 0
  fi
  ```

  Replace `"chill"` with any string you prefer.

- **Firefox Profile**: The script can launch Firefox with a specific profile. By default, it uses the profile named `MyProfile`. To use a different profile, modify the following line:

  ```bash
  open -a "Firefox" --args -P "MyProfile"
  ```

  Replace `MyProfile` with the name of the desired Firefox profile.

- **Notification and Dialog Titles**: You can customize the titles and messages of the notifications and dialogs used in the script by editing the respective AppleScript commands. For example, to change the final reminder title:

  ```bash
  osascript -e "display dialog \"$message\" buttons {\"OK\"} default button \"OK\" with title \"Reminder\""
  ```

  Replace `"Reminder"` with your preferred title.

## Example Workflow

When the script runs, it will:

1. Ask, "Hey there, what u want today :)".
2. Wait for the user to input "chill" to proceed.
3. Prompt the user to enter the duration in minutes for the Firefox session.
4. Ask the user to enter planned activities after the session, with predefined slots:
   - 1: [User Input]
   - 2: [User Input]
   - 3: [User Input]
5. Launch Firefox with the specified profile.
6. Notify the user 30 seconds before the browser is automatically closed.
7. Optionally extend the session by one minute if the user chooses.

## Dependencies

- **macOS**: The script uses macOS-specific features like `osascript` for notifications and dialogs.
- **Bash**: The script is written in Bash.

## Contributing

If you'd like to contribute to this project, please fork the repository and use a feature branch. Pull requests are welcome.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

> 2024/07/27 slimu \(- -)\
