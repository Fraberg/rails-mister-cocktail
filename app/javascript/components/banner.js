import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Bordeaux", "Beaujolais", "Muscadet", "Côtes-du-Rhône"],
    typeSpeed: 60,
    // backspacing speed
    startDelay: 1200,
    // backspacing speed
    backSpeed: 30,
    // time before backspacing
    backDelay: 800,
    // loop
    loop: true,
    // show cursor
    showCursor: false,
    // character for cursor
    cursorChar: "|"
    // attribute to type (null == text)

  });
}

export { loadDynamicBannerText };
