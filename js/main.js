$(document).ready(function(){ 
  
     // Autocomplete Textbox


      $('#search').keyup(function(){
            var search = $(this).val();

            if (search != '') {
              $.ajax({
                  url:"search/search.php",
                  method:"POST",
                  data:{search:search},
                   success:function(data){
                    $('#searchbox').fadeIn();
                    $('#searchbox').html(data);
                  }
                });
            }
      });

        $(document).on('click', 'li', function(){
            $("#search").val($(this).text());
            $('#searchbox').fadeOut();
        });















 });  