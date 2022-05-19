import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = [ "filter" ]

  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.formTarget.requestSubmit()
    }, 200)
  }
  
  // static targets = ["minValue", "maxValue"]

  // filterRate() {
  //   let min = this.minValueTarget.value;
  //   let max = this.maxValueTarget.value;
  //   let url = '/filter/start/'+min+'/end/'+max;

  //   fetch(url)
  //     .then(response => response.json())
  //     .then(response => {
  //       console.log(">>>>>>>>>", response)
  //     })
  // }
}