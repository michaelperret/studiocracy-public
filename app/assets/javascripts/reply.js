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

document.addEventListener('DOMContentLoaded', replyEventListeners);

function appendReplyBox () {
    var postedBool = false, parent = this.parentNode, parentID = parent.id;

    var childrenNodes = document.getElementById(parentID).childNodes;
    for (var x = 0; x < childrenNodes.length; x++) {
        if (childrenNodes[x].className === 'reply-box') {
            postedBool = true;
        }
    }

    if (postedBool === false) { // if === false, then the comment box doesn't already exist and should be created
        var node = document.createElement('div'); // create a div
        node.className = "reply-box"; // with a class name of reply box

        node.innerHTML = '<textarea rows=3 cols=80></textarea>\n<button>save</button>'; // create textarea
        parent.appendChild(node); // append the node to parent
    } else {
        // do nothing
    }
}

function replyEventListeners () {
    var replyElems = document.getElementsByClassName('reply');
    for (var x = 0; x < replyElems.length; x++) {
        replyElems[x].addEventListener('click', appendReplyBox);
    }
}