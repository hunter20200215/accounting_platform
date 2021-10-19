$(document).ready(function(){
    var token = $('meta[name="csrf-token"]').attr('content');
    $('#create').on('shown.bs.modal', function () {
        $('input').focus();
    });
    $('#dependents').on('change',function(){
        if ($('#dependents').val() == "Yes"){
            $('.link-id').show();
            
        }else{
            $('.link-id').css('display','none');
        }
    });
    $('#spouse').on('change',function(){
        if ($('#spouse').val() == "Yes"){
            $('.link-spouse').show();
            
        }else{
            $('.link-spouse').css('display','none');
        }
    });
    $(document).on('click', 'li', function(){  
        $(this).parents("#countryList").siblings("input[type='text']").val($(this).text()); 
        $(this).parents("#countryList").siblings("input[type='hidden']").val($(this).attr('data-id')); 
        $(this).parent().remove();
    });
    $('#profile_insert').on('click',function(){
        var html = '<div class="col-md-6">'+
        '<label class="labels">Input Dependents name</label>'+
        '<input type="text" class="form-control user-dependent-input" vlaue="" name="dependent" id="user_dependent_input" autocomplete="off">'+
        '<input type="hidden" name="profile_numbers[]" id="profile_numbers">'+
        '<div id="countryList"></div>'+
        '</div>';
        $('.group-input').append(html);

        $(".user-dependent-input").keyup(function(){ 
            var query = $(this).val();
            var htm = $(this);
            if(query != '')
            {
             var _token = token;
             $.ajax({
                url:"/user-search",
                method:"POST",
                data:{query:query, _token:_token},
                success:function(data){
                    console.log(htm);
                    $(htm).siblings('div').fadeIn();  
                    $(htm).siblings('div').html(data);
                }
            });
            }
        });
    });

    $(".user-dependent-input").keyup(function(){ 
        var query = $(this).val();
        if(query != '')
        {
         var _token = token;
         $.ajax({
            url:"/user-search",
            method:"POST",
            data:{query:query, _token:_token},
            success:function(data){
                
                $(this).siblings('div').fadeIn();  
                $('#countryList').html(data);
            }
        });
        }
    });

    $("#spouse_input").keyup(function(){ 
        var query = $(this).val();
        var htm = $(this);
        if(query != '')
        {
         var _token = token;
         $.ajax({
            url:"/user-search",
            method:"POST",
            data:{query:query, _token:_token},
            success:function(data){
                $(htm).siblings('div').html(data);
            }
        });
        }
    });

});