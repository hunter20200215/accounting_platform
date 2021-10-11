$(document).ready(function(){
    var token = $('meta[name="csrf-token"]').attr('content');
    $( ".edit-icon" ).on( "click", function() {

        

        var data_name = $(this).attr('data-name');
        var data_value = $(this).attr('data-value');
        var data_id = $(this).attr('data-id');
        $("#edit #name").val(data_name);
        $("#edit #value").val(data_value);
        $("#edit #id").val(data_id);
    });
    $( ".delete-icon" ).on( "click", function() {
        
        var data_id = $(this).attr('data-id');
        $("#delete #id").val(data_id);
    });
    $( ".edit-icon1" ).on( "click", function() {
        var id = $('#page_id').attr('data-id');
        $('#id').val(id);
    });
    $( ".user-edit-icon" ).on( "click", function() {
        var data_name = $(this).attr('data-name');
        var data_email = $(this).attr('data-email');
        var data_roll = $(this).attr('data-roll');
        var data_id = $(this).attr('data-id');
        $("#edit #name").val(data_name);
        $("#edit #email").val(data_email);
        $("#edit #id").val(data_id);
        if (data_roll == 1) {
            $("option[value='1']").attr('selected','selected');
        } else {
            $("option[value='2']").attr('selected','selected');
        }
        
       
        
    });

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
    $('#profile_insert').on('click',function(){
        var html = '<div class="col-md-6">'+
        '<label class="labels">Input Dependents name</label>'+
        '<input type="text" class="form-control dependent_input" vlaue="" name="dependent" id="dependent_input" autocomplete="off">'+
        '<input type="hidden" name="profile_numbers[]" id="profile_numbers">'+
        '<div id="countryList"></div>'+
        '</div>';
        $('.group-input').append(html);

        $(".dependent_input").keyup(function(){ 
            var query = $(this).val();
            var htm = $(this);
            if(query != '')
            {
             var _token = token;
             $.ajax({
                url:"/api-search",
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

        $(document).on('click', 'li', function(){  
            $(this).parent().parent().prev().prev().val($(this).text()); 
            $(this).parent().parent().prev().val($(this).attr('data-id')); 
            $(this).parent().remove();
        });
    });

    $(".dependent_input").keyup(function(){ 
        var query = $(this).val();
        if(query != '')
        {
         var _token = token;
         $.ajax({
            url:"/api-search",
            method:"POST",
            data:{query:query, _token:_token},
            success:function(data){
                
                $(this).siblings('div').fadeIn();  
                $('#countryList').html(data);
            }
        });
        }
    });
    $(document).on('click', 'li', function(){  
        $(this).parent().parent().prev().prev().val($(this).text()); 
        $(this).parent().parent().prev().val($(this).attr('data-id')); 
        $(this).parent().remove();
    });

    $(".dependents_edit").keyup(function(){ 
        var query = $(this).val();
        var htm = $(this);
        if(query != '')
        {
         var _token = token;
         $.ajax({
            url:"/api-search",
            method:"POST",
            data:{query:query, _token:_token},
            success:function(data){
                $(htm).siblings('div').html(data);
            }
        });
        }
    });
    $(".user_dependents_edit").keyup(function(){ 
        var query = $(this).val();
        var htm = $(this);
        if(query != '')
        {
         var _token = token;
         $.ajax({
            url:"/api-search",
            method:"POST",
            data:{query:query, _token:_token},
            success:function(data){
                $(htm).siblings('div').html(data);
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
            url:"/api-search",
            method:"POST",
            data:{query:query, _token:_token},
            success:function(data){
                $(htm).siblings('div').html(data);
            }
        });
        }
    });
    $('#spouse').on('change',function(){
        if ($('#spouse').val() == "Yes"){
            $('.link-spouse').show();
            
        }else{
            $('.link-spouse').css('display','none');
        }
    });
    
});