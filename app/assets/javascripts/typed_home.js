$(document).ready(function(){
  $(function(){
      $(".element").typed({
          strings: ["appartement.", "maison.", "local commercial.", "terrain à batir."],
          loop: false,
          // time before typing starts
          startDelay: 50,
          // backspacing speed
          backSpeed: 100,
          typeSpeed: 50,
          // loop
          loop: true,
      });
  });
});