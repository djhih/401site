(function() {
  'use strict';

  function changeLang() {
    var lang = this.value;
    var canonical = this.dataset.canonical;
    console.log(canonical);
    if (lang === 'zh-tw') lang = '';
    if (lang) lang += '/';

    location.href = '/' + lang + canonical;
  }

  document.getElementById('lang-select').addEventListener('change', changeLang);
  document.getElementById('mobile-lang-select').addEventListener('change', changeLang);
}());
