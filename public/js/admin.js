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
        $(this).parents("#countryList").siblings("input[type='text']").val($(this).text()); 
        $(this).parents("#countryList").siblings("input[type='hidden']").val($(this).attr('data-id')); 
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
    $("#spouse_edit").keyup(function(){ 
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
    $("[name='house_own_status']").on('click',function(){
        
        if ($(this).val() == 'own') {
            $('.tax_input').removeClass("d-none");
            $('.tax_input').addClass("d-block");
            $('.rent_input').removeClass("d-block");
            $('.rent_input').addClass("d-none");
        }else{
            $('.rent_input').removeClass("d-none");
            $('.rent_input').addClass("d-block");
            $('.tax_input').removeClass("d-block");
            $('.tax_input').addClass("d-none");
        }
    });
    $('.add-dependent').on('click',function(){
        var html_content = '<div>'+
        '<label for="fname" style="margin-right:3px" class="my-2 label-style">Dependet Name :</label>'+
        '<input type="text" value="" id="dependents_edit" class="dependents_edit w-50"/ autocomplete="off">'+
        '<i class="fas fa-cut cut-icon ml-2" aria-hidden="true" data-id="{{ $info->id }}" data-dependent="{{ $parameter->id }}"></i>'+
        '<input type="hidden" name="profile_numbers[]" >'+
        '<div style="margin-left:130px;" id="countryList"></div>'+
        '</div>';
        var htm = $(this);
        $(htm).parent('div').siblings('form').children().children('div.input-field').append(html_content);
        

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

        $('.cut-icon').on('click',function(){
            var id = $(this).attr('data-id');
            var dependent_id = $(this).attr('data-dependent'); 
            var htm = $(this);
            var elements_id = "#"+"dependent_id" + dependent_id;
            if(id != '')
            {
             var _token = token;
             $.ajax({
                url:"/dependent-del",
                method:"POST",
                data:{id:id,dependent:dependent_id, _token:_token},
                success:function(data){
                    $(htm).parent('div').remove();
                    console.log(elements_id);
                    $(elements_id).remove();
                }
            });
            }
        });

        $(document).on('click', 'li', function(){  
            $(this).parents("#countryList").siblings("input.w-50").val($(this).text()); 
            $(this).parents("#countryList").siblings("input[type='hidden']").val($(this).attr('data-id')); 
            $(this).parent().remove();
        });
    });

    $('.cut-icon').on('click',function(){
        var id = $(this).attr('data-id');
        var dependent_id = $(this).attr('data-dependent'); 
        var htm = $(this);
        var elements_id = "#"+"dependent_id" + dependent_id;
        if(id != '')
        {
         var _token = token;
         $.ajax({
            url:"/dependent-del",
            method:"POST",
            data:{id:id,dependent:dependent_id, _token:_token},
            success:function(data){
                $(htm).parent('div').remove();
                console.log(elements_id);
                $(elements_id).remove();
            }
        });
        }
    });

    $('.checkbox-style').on('click',function(){
        let objEle = $(this);
        console.log("kikiki");
        if (objEle.prop('checked') == true) {
            objEle.parent().siblings("div").removeClass("d-none");
            objEle.parent().siblings("div").find("input[type='hidden']").val('1');
        }else {
            objEle.parent().siblings("div").addClass("d-none");
        }

    });
    $('.salary-input').on('input propertychange', (event)=>{
        event.target.value = (parseInt(event.target.value.replace(/[^\d]+/gi, '')) || 0).toLocaleString('en-US')
    });
});
