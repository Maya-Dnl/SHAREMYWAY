import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-style-input"
export default class extends Controller {
  // static targets = ["greenBackground", "userImage"]

  background() {
    image.classList.add('d-none');
  }
}
