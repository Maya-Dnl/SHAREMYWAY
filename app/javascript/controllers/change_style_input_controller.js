import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="change-style-input"
export default class extends Controller {
  static targets = ["user", "check"]

  // connect() {
  //   console.log(this.checkTarget);
  // }

  background(event) {
    event.preventDefault();
    // je cache mon image actuel
      this.userTarget.classList.add('d-none');
    // ma classe devient visble au change    }
      this.checkTarget.classList.remove('d-none');
  }
}
