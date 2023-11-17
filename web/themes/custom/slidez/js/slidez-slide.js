if (!window.customElements.get('slidez-slide')) {
    class SlidezSlide extends HTMLElement {
        connectedCallback() {
            const nextButton = this.querySelector('.pager__item--next a');
            const previousButton = this.querySelector('.pager__item--previous a');

            document.addEventListener('keydown', function (event) {
                const code = event.code;
                if ((code === 'ArrowRight' || code === 'Space') && nextButton) {
                    nextButton.click();
                }
                if (code === 'ArrowLeft' && previousButton) {
                    previousButton.click();
                }
            });
        }
    }

    window.customElements.define('slidez-slide', SlidezSlide);
}