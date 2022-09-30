/**
 *  id를 클릭했을 때
 */

$(document).ready(function(){
   
   $(".nick").on("click",function(){
      $(".idul").css("display","none");
      $(this).find("ul").toggle();   
   })

   $("body").click(function(e){
      if(!$(e.target).hasClass('nick')){
         // alert("타겟 밖");
         $(".idul").css("display","none");
      }
   })

})