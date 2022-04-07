import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    home: Boolean,
  }

  connect() {
    if (!this.homeValue) this.element.classList.add("navbar-foodclass-white");
  }

  updateNavbar() {
    if (!this.homeValue) return ;

    if (window.scrollY > (window.innerHeight-75)) {
      this.element.classList.add("navbar-foodclass-white")
    } else {
      this.element.classList.remove("navbar-foodclass-white")
    }
  };
}
