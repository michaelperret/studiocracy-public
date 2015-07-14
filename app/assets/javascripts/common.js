var ready = function() {

};

document.addEventListener('DOMContentLoaded', ready);
/* not necessary -- DOMContentLoaded is supported in IE8+, Safari, Chrome, FF, Opera, standard browsers. */

(function pageLoad() {
    ready();
})(); /* either use self-invoking pageLoad function */

$(document).on('page:change', ready); /* for rails-specific (legal) implementation */

//$(document).ready(ready);
//$(document).on('page:change', ready);
