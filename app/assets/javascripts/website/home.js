/* global jQuery*/
/* global $*/
/* global location*/
//= require website/jquery
//= require website/popper
//= require website/bootstrap
//= require website/bootstrap-select
//= require website/notify
//= require website/containers/holder

$(document).ready(function() {
  $('div[id^="Modal"]').on('shown.bs.modal', function() {
    //document.activeElement.blur();
    $(this).find(".modal-body :input:visible").first().focus();
    //$(this).find(".modal-body :select:visible").first().focus();
    //$(this).find(".modal-body .filter-option-inner-inner").first().focus();
  });

  $(".link_website").click(function () {
    //var addressValue = $(this).attr("data-website");
    //alert(addressValue );
    if (addressValue != null)
    {
      $.ajax({
        url: "/ajax/update_click_website",
        data: {
          id: addressValue
        },
        dataType: "script"
      });       
    }
  });

});

// Input File Type
(function($) {
	$( '.inputfile' ).each( function(){
		var $input	 = $( this ),
			$label	 = $input.next( 'label' ),
			labelVal = $label.html();

		$input.on( 'change', function( e ) {
			var fileName = '';

			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
			else if( e.target.value )
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				$label.find( 'span' ).html( fileName );
			else
				$label.html( labelVal );
		});

		// Firefox bug fix
		$input
		.on( 'focus', function(){ $input.addClass( 'has-focus' ); })
		.on( 'blur', function(){ $input.removeClass( 'has-focus' ); });
	});
})( jQuery, window, document );
  
// Fade in Countries
$(function(){
 
});
 
// Select all links with hashes
$('a[href*="#"]')
// Remove links that don't actually link to anything
.not('[href="#"]')
.not('[href="#0"]')
.click(function(event) {
  // On-page links
  if (
    location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
    && 
    location.hostname == this.hostname
  ) {
    // Figure out element to scroll to
    var target = $(this.hash);
    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
    // Does a scroll target exist?
    if (target.length) {
      // Only prevent default if animation is actually gonna happen
      event.preventDefault();
      $('.nav-item a.active').removeClass('active');
      //var $target = $(target);
      //$target.addClass('active');
      if ($("#navbar").offset().top == 0) {
        $('html, body').animate({
          scrollTop: (target.offset().top - 70)
        }, 1500);
      } else {
        $('html, body').animate({
          scrollTop: (target.offset().top - 90)
        }, 1500);
      }
    }
  }
});

(function($) {
    "use strict";
    
    // var $ContriesJobs = $("#ContriesJobs"),
    //     $Professions = $("#Professions"),
    //     $Tips = $("#Tips"),
    //     $EmailAlert = $("#EmailAlert"),
    //     $SendCV = $("#SendCV"),
    //     $HelpUs = $("#HelpUs"),
    //     $Contact = $("#Contact"),
    //     $App = $("#App");

    var $WorkUs = $("#WorkUs"),
        $EmailAlert = $("#EmailAlert"),
        $Contact = $("#Contact"),
        $App = $("#App");

    var $navbar = $("#navbar"),
        y_pos = $navbar.offset().top,
        height = $navbar.height(),
        paused = true;

    $(document).scroll(function() {
        var scrollTop = $(this).scrollTop();
        
        if ((paused) && (scrollTop > y_pos + height)) {
            $navbar.addClass("navbar-fixed").animate({
                top: 0
            }, 2000);
            paused = false;
        } else if (scrollTop <= y_pos) {
            $navbar.removeClass("navbar-fixed").clearQueue();
            $navbar.removeAttr( 'style' );
            paused = true;
        }
        
        // if (scrollTop >= $Professions.offset().top - 450) {
        //     $("#section_professions").animate({ opacity: 1 }, 600);
        // }
        
        // if (scrollTop >= $Tips.offset().top - 450) {
        //     $("#section_tips").animate({ opacity: 1 }, 600);
        // }
        
        if (scrollTop >= $EmailAlert.offset().top - 450) {
            $("#section_email_alert").animate({ opacity: 1 }, 600);
        }
        
        if (scrollTop >= $WorkUs.offset().top - 450) {
            $("#section_work_us").animate({ opacity: 1 }, 600);
        }
        
        // if (scrollTop >= $HelpUs.offset().top - 450) {
        //     $("#section_help_us").animate({ opacity: 1 }, 600);
        // }
        
        if (scrollTop >= $Contact.offset().top - 450) {
            $("#section_contact").animate({ opacity: 1 }, 600);
        }
        
        if (scrollTop >= $App.offset().top - 450) {
            $("#section_app").animate({ opacity: 1 }, 600);
        }

        // if (scrollTop >= $ContriesJobs.offset().top) {
        //   $('.nav-item a.active').removeClass('active');
        //   $('#NavBarContriesJobs').addClass('active');
        // }
        
        // if (scrollTop >= $Professions.offset().top - 100) {
        //   $('.nav-item a.active').removeClass('active');
        //   $('#NavBarProfessions').addClass('active');
        // }
        
        // if (scrollTop >= $Tips.offset().top - 100) {
        //   $('.nav-item a.active').removeClass('active');
        //   $('#NavBarTips').addClass('active');
        // }
        
        if (scrollTop >= $EmailAlert.offset().top - 150) {
          $('.nav-item a.active').removeClass('active');
          $('#NavBarEmailAlert').addClass('active');
        }
        
        if (scrollTop >= $WorkUs.offset().top - 150) {
          $('.nav-item a.active').removeClass('active');
          $('#NavBarWorkUs').addClass('active');
        }
        
        // if (scrollTop >= $HelpUs.offset().top - 150) {
        //   $('.nav-item a.active').removeClass('active');
        //   $('#NavBarHelpUs').addClass('active');
        // }
        
        if (scrollTop >= $Contact.offset().top - 150) {
          $('.nav-item a.active').removeClass('active');
          $('#NavBarContact').addClass('active');
        }

        if (scrollTop >= $App.offset().top - 150) {
          $('.nav-item a.active').removeClass('active');
          $('#NavBarApp').addClass('active');
        }
    });
})(jQuery, undefined);

