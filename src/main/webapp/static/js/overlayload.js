	// Reflect scrolling in navigation
	var navActive = function(section) {

		var $el = $('#navbar > ul');
		$el.find('li').removeClass('active');
		$el.each(function(){
			$(this).find('a[data-nav-section="'+section+'"]').closest('li').addClass('active');
		});

	};

	var navigationSection = function() {

		var $section = $('section[data-section]');
		
		$section.waypoint(function(direction) {
		  	
		  	if (direction === 'down') {
		    	navActive($(this.element).data('section'));
		  	}
		}, {
	  		offset: '150px'
		});

		$section.waypoint(function(direction) {
		  	if (direction === 'up') {
		    	navActive($(this.element).data('section'));
		  	}
		}, {
		  	offset: function() { return -$(this.element).height() + 155; }
		});

	};

var contentWayPoint = function() {
	var i = 0;
	$('.animate-box').waypoint( function( direction ) {

		if( direction === 'down' && !$(this.element).hasClass('animated') ) {
			
			i++;

			$(this.element).addClass('item-animate');
			setTimeout(function(){

				$('body .animate-box.item-animate').each(function(k){
					var el = $(this);
					setTimeout( function () {
						var effect = el.data('animate-effect');
						if ( effect === 'fadeIn') {
							el.addClass('fadeIn animated');
						} else if ( effect === 'fadeInLeft') {
							el.addClass('fadeInLeft animated');
						} else if ( effect === 'fadeInRight') {
							el.addClass('fadeInRight animated');
						} else {
							el.addClass('fadeInUp animated');
						}

						el.removeClass('item-animate');
					},  k * 200, 'easeInOutExpo' );
				});
				
			}, 100);
			
		}

	} , { offset: '85%' } );
};

function myload(url, category, src_title) {	
	$(".project-overlay").load(url, {"category": category, "src_title" :src_title} ,contentWayPoint);
	$(".project-overlay").removeClass("hidden");
	$("#colorlib-page").addClass("hidden");

	$('html').animate({scrollTop: 0}, 10);
}


function closeOverlay() {
	let curURL = $(window.location)[0].href;
	let lastIndex = curURL.lastIndexOf("#");
	let url = curURL.substring(0, lastIndex) + "index";

	window.history.pushState(null, null, url);
	$(".project-overlay").addClass("hidden");
	$(".project-overlay").empty();
	$("#colorlib-page").removeClass("hidden");
	
	let section = 'project';
	navigationSection();
	$('html, body').animate({
		scrollTop: $('[data-section="' + section + '"]').offset().top - 55
	}, 10);
}

$("a[name='overlay-project']").click(function(event) {
	event.preventDefault();
	let target = event.target;
	let url = target.getAttribute("path");
	let curURL = $(window.location)[0].href;
	let lastIndex = curURL.lastIndexOf("/");
	let url_split = url.split('/');
	let category = url_split[1];
	let src_title = url_split[2];
	myload(curURL.substring(0, lastIndex + 1) + "project", category, src_title);
	

	let loadURL = curURL.substring(0, lastIndex + 1) + "#" + url;
	window.history.pushState(null, null, loadURL);
});