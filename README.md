
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
| ![image](https://github.com/user-attachments/assets/94970687-779f-4fe7-803d-d3fa90207b4d)
 |![image](https://github.com/user-attachments/assets/1be85414-ad57-4386-9ebf-b0dbcfc1818b)
|![image](https://github.com/user-attachments/assets/e1a24e5a-2379-4b98-97b0-15fe81b49232)
 |

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



