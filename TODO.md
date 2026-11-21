# GestureLED delivery outcomes

- [x] Build a responsive dark hardware-lab dashboard for desktop and mobile with the GestureLED header, firmware action, serial connection status, repository link, camera viewport, mode tabs, telemetry, output matrices, and footer.
  - The page must present the product as GestureLED / ESP32 · v1.0.0 / Hardware Vision Controller · SKR Electronics Lab.
  - The UI must remain usable at desktop and mobile widths, including a stacked layout below the compact breakpoint.

- [x] Implement the webcam permission flow and local-processing messaging.
  - The camera panel must show a clear "Webcam access required" state and an "Enable camera" action.
  - Enabling the camera must request browser camera access, show the local video feed when granted, and show a recovery message when denied or unavailable.

- [x] Implement USB Web Serial connection controls.
  - The serial action must show disconnected/connected state and keep the 115200 Baud label visible.
  - On Web Serial capable browsers it must request a port, open at 115200 baud, allow command writes, and support disconnect.
  - On unsupported browsers it must provide a useful non-blocking explanation rather than fail silently.

- [x] Implement three selectable gesture modes plus Wokwi simulation.
  - Palm switch must expose waiting/open/closed states and drive all five LED outputs together, sending MODE1:ON or MODE1:OFF only when the state changes.
  - Pinch dimmer must expose 0–255 PWM brightness, percentage, fingertip distance, and send MODE2:<value> updates.
  - Finger counter must expose 0–5 fingers, per-finger states, sequential LED output, and send MODE3:<count> updates.
  - Wokwi must expose the reference simulation in an embedded panel with a fallback link.

- [x] Implement live hardware channel telemetry for GPIO 13, 14, 27, 26, and 25.
  - Each mode must show five output rows with LED number, visual rail, state, and last command telemetry.
  - Demo controls must make the dashboard visibly testable without a physical hand or ESP32.

- [x] Render and stabilize the live hand animation overlay.
  - Detected hands must show smoothed landmark points, finger connections, fingertip pulse animation, and no-hand cleanup instead of a static camera frame.
  - Continuous tracking must avoid duplicate loops and repeated identical serial commands.
  - Visible creator attribution must use Chyon Adhikary.
