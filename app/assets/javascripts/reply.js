/*
$(document).ready(function() {
	$('.reply').one("click",function() {
		$('.reply_box').append('<textarea rows="3" cols="80"></textarea>');
		$('.reply_box').append('<button>save</button>');
        // this is an illegal operation. using class names should never be done for appending.
	});
});
*/

/* native javascript implementation */

document.addEventListener('DOMContentLoaded', appendReplyBox);

function appendReplyBox () {
    var parentID = this.parentNode.id;
    var node = docume.nt.createElement('div');
    node.className = "reply-box";
    node.innerHTML = '<textarea rows=3 cols=80></textarea>\n<button>save</button>';
}

function replyEventListeners () {
    var replyElems = document.getElementsByClassName('reply');
    for (var x = 0; x < replyElems.length; x++) {
        replyElems[x].addEventListener('click', appendReplyBox);
    }
}