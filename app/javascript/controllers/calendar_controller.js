import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  static targets = ["dateInput"];

  connect() {
    console.log("Calendar controller connected");
  }

  selectDate(event) {
    event.preventDefault();
    const selectedDate = event.target.innerText;// Get the clicked date
    this.dateInputTarget.value = selectedDate;// Set the value of the hidden field
  }
}
