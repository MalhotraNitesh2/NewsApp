✅ Thanks for the screenshots and details! Here’s a **natural, human-written README** for your project — no AI vibe, just clean and authentic.

---

# NewsApp

NewsApp is a simple and clean iOS app that displays the latest headlines along with article descriptions and images. The app fetches news from a live API and presents it in a scrollable table view.

You can tap any news item to open the full article directly in Safari.

---

## Features

* 📰 Displays news headlines, descriptions, and images in a list format.
* 🌙 Supports both **light mode** and **dark mode** for a comfortable reading experience.
* 📱 Works seamlessly in both **portrait** and **landscape** orientations.
* 🌐 Tapping on a news item opens the original article in Safari so you can read the full content.
* ⚡ Smooth scrolling and efficient image loading.

---

## Screenshots

| News Feed (Dark Mode)                          | Open Article in Safari                         | Landscape Support                              |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| ![screenshot](https://via.placeholder.com/150) | ![screenshot](https://via.placeholder.com/150) | ![screenshot](https://via.placeholder.com/150) |

*(Replace the placeholders above with your actual screenshots or upload them to a hosting service.)*

---

## How it works

* The app fetches news data (title, description, image URL) from a news API.
* News is displayed using `UITableView` with a custom cell for image + text.
* Clicking on any cell opens Safari with the article’s full link.
* The app handles missing images or descriptions gracefully (e.g. shows a placeholder image or "No description").

---

## Requirements

* Xcode 15 or later
* iOS 17 or later
* Swift 5

---

## How to run

1. Clone the repository.
2. Open the `.xcodeproj` file in Xcode.
3. Run on a simulator or physical device.
4. Make sure your device/simulator has internet access (since it fetches live news).

---

## Notes

* The app currently opens articles externally in Safari. In the future, this could be updated to use an in-app browser (`SFSafariViewController`).
* There’s basic image caching using the view model’s `imageData`. For production use, a more robust cache (like `NSCache` or a library) is recommended.

---

👉 Feel free to customize this README further!
If you'd like, I can **generate badges**, **add installation steps**, or **format it for GitHub** — just let me know! 🚀
