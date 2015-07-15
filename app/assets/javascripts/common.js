var ready = function() {

};

document.addEventListener('DOMContentLoaded', ready);

(function pageLoad() {
    ready();
})(); /* either use self-invoking pageLoad function */

$(document).on('page:change', ready); /* for rails-specific (legal) implementation */