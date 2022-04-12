import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // const fontSizeOutput = ( scrolled ) => {
  //   console.log(scrolled);

  // }
  updateTitleSize() {
    const scrolled = (window.scrollY)/(window.innerHeight-75)

    // min width 1201px
    const maxFontSize = 15
    const minFontSize = 2.2

    // min width 1200px
    const maxFontSize2 = 12
    const minFontSize2 = 2.2

    // max width 992px
    const maxFontSize1 = 9
    const minFontSize1 = 2.2

    // max width 768px
    const maxFontSize3 = 8
    const minFontSize3 = 2.2

    // max width 414px
    const maxFontSize4 = 4.4
    const minFontSize4 = 1.6


    // fontSizeOutput(scrolled)
    if (window.matchMedia("(max-width: 414px)").matches) {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize4 - minFontSize4)) + minFontSize4 : minFontSize4
      this.element.style.fontSize = `${fontSize}rem`;
    } else if (window.matchMedia("(max-width: 768px)").matches) {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize3 - minFontSize3)) + minFontSize3 : minFontSize3
      this.element.style.fontSize = `${fontSize}rem`;
    } else if (window.matchMedia("(max-width: 992px)").matches){
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize1 - minFontSize1)) + minFontSize1 : minFontSize1
      this.element.style.fontSize = `${fontSize}rem`;
    } else if (window.matchMedia("(max-width: 1200px)").matches){
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize2 - minFontSize2)) + minFontSize2 : minFontSize2
      this.element.style.fontSize = `${fontSize}rem`;
    } else {
      const fontSize = scrolled >= 0 && scrolled <= 1 ? ((1 - scrolled) * (maxFontSize - minFontSize)) + minFontSize : minFontSize
      this.element.style.fontSize = `${fontSize}rem`;
    }
  }
}
