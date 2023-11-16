// booking_price_controller.js

import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="booking-price"
export default class extends Controller {
  static targets = ["startDate", "endDate", "price", "info"];
  static values = { price: Number };

  update() {
    const pricePerDay = parseInt(this.priceValue, 10);
    // make sure the user has chosen a start date and end date
    if (
      this.startDateTarget.value !== "" &&
      this.endDateTarget.value !== ""
    ) {
      // calculating the time from the values in the HTML
      const diffInMs =
        new Date(this.endDateTarget.value) -
        new Date(this.startDateTarget.value);
      const diffInDays = diffInMs / (1000 * 60 * 60 * 24);
      if (diffInDays > 0) {
        // displays the total price per nigh
        this.infoTarget.innerText = `¥${pricePerDay} x ${diffInDays} nights`;
        this.priceTarget.innerHTML = `<span>¥${(
          diffInDays * pricePerDay
        ).toLocaleString()}</span> <small class='fw-light'>total</small> `;
      } else if (diffInDays === 0) {
        // displays 1-night minimum if end date is same as start date
        this.infoTarget.innerText = "";
        this.priceTarget.innerHTML =
          "<span class='text-danger fw-light'>1-night mininum</span>";
      } else {
        // displays invalid if the end date is before the start or not overnight
        this.infoTarget.innerText = "";
        this.priceTarget.innerHTML =
          "<span class='text-danger fw-light'>Invalid dates</span>";
      }
    }
  }
}
