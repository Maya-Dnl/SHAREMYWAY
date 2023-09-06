import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category"
export default class extends Controller {
  static targets = ["input", "icon", "defaultIcon"];

  connect() {
    console.log("Connected to this element", this.element)
    console.log("Selected category:", this.inputTarget)
  }

  updateIcon(){
      // console.log("Icon:", this.iconTarget)
      const selectedCategory = this.inputTarget.value; // Retrieve the value selected from the dropdown list
      const defaultIcon = this.defaultIconTarget;
      const categoryIcon = this.iconTarget;

      // Clear the previous icon
      categoryIcon.innerHTML = "";

      let iconHTML = '';

      if (selectedCategory !== "") {
        defaultIcon.classList.add("d-none");
        this.iconTarget.classList.remove("d-none");
      } else {
        defaultIcon.classList.remove("d-none");
        this.iconTarget.classList.add("d-none");
      }

      if (selectedCategory === "Hiking and Trekking") {
        iconHTML = '<i class="fas fa-person-hiking"></i>';
      } else if (selectedCategory === "Backpacking and Camping") {
        iconHTML = '<i class="fas fa-campground"></i>';
      }
      else if (selectedCategory === "Road Trips and Drives") {
        iconHTML = '<i class="fas fa-solid fa-car"></i>';
      }
      else if (selectedCategory === "Wildlife and Safari") {
        iconHTML = '<i class="fas fa-solid fa-hippo"></i>';
      }
      else if (selectedCategory === "Language Learning") {
        iconHTML = '<i class="fas fa-solid fa-language"></i>';
      }
      else if (selectedCategory === "Photography Workshops") {
        iconHTML = '<i class="fas fa-solid fa-camera"></i>';
      }
      else if (selectedCategory === "Cooking Classes") {
        iconHTML = '<i class="fas fa-solid fa-cookie-bite"></i>';
      }
      else if (selectedCategory === "Coding and Tech Workshops") {
        iconHTML = '<i class="fas fa-solid fa-book-open"></i>';
      }
      else if (selectedCategory === "Yoga and Meditation") {
        iconHTML = '<i class="fas fa-solid fa-spa"></i>';
      }
      else if (selectedCategory === "Group Fitness Classes") {
        iconHTML = '<i class="fas fa-solid fa-people-group"></i>';
      }
      else if (selectedCategory === "Outdoor Sports") {
        iconHTML = '<i class="fas fa-solid fa-cloud-sun"></i>';
      }
      else if (selectedCategory === "Personal Training") {
        iconHTML = '<i class="fas fa-solid fa-dumbbell"></i>';
      }
      else if(selectedCategory === null){
        iconHTML = '<i class="fa-solid fa-square-caret-down"></i>';
      }
      this.iconTarget.insertAdjacentHTML('beforeend', iconHTML);
  }
}
