import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  mouseEnter() {
    clearTimeout(this.hoverTimeout)
    this.element.setAttribute("open", true)
  }

  mouseLeave() {
    this.hoverTimeout = setTimeout(() => {
      this.element.removeAttribute("open")
    }, 200)
  }
}
