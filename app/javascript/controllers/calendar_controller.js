import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  static targets = ["dateInput"];

  connect() {
    console.log("Calendar controller connected");
  }

  selectDate(event) {
    event.preventDefault();
    
    // Grab the clicked date (text inside the link)
    const selectedDate = event.target.textContent.trim()

    // Assign it to the hidden_field input
    this.dateInputTarget.value = selectedDate

    // highlight the clicked link
    this._highlightSelected(event.target)
  }

  _highlightSelected(clickedElement) {
    // Remove highlight from any previously-selected link
    const previouslySelected = this.element.querySelector(".selected-date")
    if (previouslySelected) {
      previouslySelected.classList.remove("selected-date")
    }
    // Highlight the newly-clicked date
    clickedElement.classList.add("selected-date")
  }
}
