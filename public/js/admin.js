// const { forEach } = require("lodash");

$(document).ready(function(){

    // for image Selection
    $(".social").select2({
        templateResult: formatState
        });
    var baseUrl = "/img/carriers/";

    function formatState (state) {
        if (!state.id) { return state.text; }
        var $state = $(
        '<div style="display: flex; align-items: center;">'+
        '<div><img sytle="display: inline-block;" src="'+ baseUrl + state.text + '.svg" style="height: 40px;width: atuto;" /></div>'+
        '<div style="margin-left: 20px;">'+
            state.text + 
        '</div>' +
        '</div>'
        );
        return $state;
    }
    
    
    var token = $('meta[name="csrf-token"]').attr('content');
    $( ".edit-icon" ).on( "click", function() {
        var data_name = $(this).attr('data-name');
        var data_value = $(this).attr('data-value');
        var data_id = $(this).attr('data-id');
        $("#edit #name").val(data_name);
        $("#edit #value").val(data_value);
        $("#edit #id").val(data_id);
    });
    $( ".carrier-edit-icon" ).on( "click", function() {
        var data_name = $(this).attr('data-name');
        var data_logo_id = $(this).attr('data-logo-id');
        var data_id = $(this).attr('data-id');
        console.log(data_id);
        $("#edit #name").val(data_name);
        $("#edit #id").val(data_id);
        var $example = $("#edit .social").select2({
            templateResult: formatState
            });
        $example.val(data_logo_id).trigger("change");
        setTimeout(function() {
            $('.social').siblings('span').addClass('logo-style');
        }, 100);
    });
    $( ".delete-icon" ).on( "click", function() {        
        var data_id = $(this).attr('data-id');
        $("#delete #id").val(data_id);
    });
    $( ".edit-icon1" ).on( "click", function() {
        var id = $('#page_id').attr('data-id');
        $('#id').val(id);
    });
    
    $(".delete-icon3").on('click',function() {
        var data_id = $(this).attr('data-id');
        $("#delete #id").val(data_id);
    });
    $(".edit-icon3").on('click',function() {
        var data_name = $(this).attr('data-name');
        var data_action = $(this).attr('data-action');
        var data_id = $(this).attr('data-id');
        $("#edit #name").val(data_name);
        $("#edit #id").val(data_id);
        if (data_action == 1) {
            $("#edit #action").prop('checked', true);
        }else{
            $("#edit #action").prop('checked', false);
        }
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
    $(".copy-icon3").on('click',function(){ 
        console.log('kikiki');
        var data_name = $(this).attr('data-name');
        var data_value = $(this).attr('data-value');
        var data_id = $(this).attr('data-id');
        if(data_id != '')
        {
         var _token = token;
         $.ajax({
            url:"/admin/campaign/copy",
            method:"POST",
            data:{data_id:data_id,data_name:data_name, _token:_token},
            success:function(data){
                console.log(data.status);
                location.reload();
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
            objEle.parent().siblings("div").find("input.salary-input").val('0');
        }else {
            objEle.parent().siblings("div").addClass("d-none");
        }

    });
    $('.salary-input').on('input propertychange', (event)=>{
        event.target.value = (parseInt(event.target.value.replace(/[^\d]+/gi, '')) || 0).toLocaleString('en-US')
    });

    $('#sortId').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
        let campaigns_ids =[];
        let campaigns = $('[name="campaigns[]"]').select2('data');
        campaigns.forEach(function(item){
            campaigns_ids.push(item.id);
        });
        let inputElements = document.querySelectorAll('.form-check-input[name="categorys[]"]');
        let inputElements1 = document.querySelectorAll('.form-check-input[name="income[]"]');
        let inputElements2 = document.querySelectorAll('.form-check-input[name="deduction[]"]');
        let inputElements3 = document.querySelectorAll('.form-check-input[name="sets[]');
        
        console.log(campaigns);
        let start_date = document.querySelector('input[name="start_date"]').value;
        let end_date = document.querySelector('input[name="end_date"]').value;
        let full_name = document.querySelector('input[name="full_name"]').value;
        for(let i=0; inputElements[i]; ++i){
            if(inputElements[i].checked){
                categorys.push(inputElements[i].value);
            }
        }
        
        for(let i=0; inputElements1[i]; ++i){
            if(inputElements1[i].checked){
                income.push(inputElements1[i].value);
            }
        }

        for(let i=0; inputElements2[i]; ++i){
            if(inputElements2[i].checked){
                deduction.push(inputElements2[i].value);
            }
        }

        for(let i=0; inputElements3[i]; ++i){
            if(inputElements3[i].checked){
                sets.push(inputElements3[i].value);
            }
        }
        
        document.querySelector('input[name="categorys"]').value = categorys;
        document.querySelector('input[name="income"]').value = income;
        document.querySelector('input[name="deduction"]').value = deduction;
        document.querySelector('input[name="start_date1"]').value = start_date;
        document.querySelector('input[name="end_date1"]').value = end_date;
        document.querySelector('input[name="sets"]').value = sets;
        document.querySelector('input[name="full_name1"]').value = full_name;
        document.querySelector('input[name="campaigns"]').value = campaigns_ids;

        document.querySelector('form#sortById').submit();
    });
    $('#sortName').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
        let campaigns_ids =[];
        let campaigns = $('[name="campaigns[]"]').select2('data');
        campaigns.forEach(function(item){
            campaigns_ids.push(item.id);
        });
        let inputElements = document.querySelectorAll('.form-check-input[name="categorys[]"]');
        let inputElements1 = document.querySelectorAll('.form-check-input[name="income[]"]');
        let inputElements2 = document.querySelectorAll('.form-check-input[name="deduction[]"]');
        let inputElements3 = document.querySelectorAll('.form-check-input[name="sets[]');

        let start_date = document.querySelector('input[name="start_date"]').value;
        let end_date = document.querySelector('input[name="end_date"]').value;
        let full_name = document.querySelector('input[name="full_name"]').value;
        for(let i=0; inputElements[i]; ++i){
            if(inputElements[i].checked){
                categorys.push(inputElements[i].value);
            }
        }
        
        for(let i=0; inputElements1[i]; ++i){
            if(inputElements1[i].checked){
                income.push(inputElements1[i].value);
            }
        }

        for(let i=0; inputElements2[i]; ++i){
            if(inputElements2[i].checked){
                deduction.push(inputElements2[i].value);
            }
        }

        for(let i=0; inputElements3[i]; ++i){
            if(inputElements3[i].checked){
                sets.push(inputElements3[i].value);
            }
        }
        document.querySelector('form#sortByName > input[name="categorys"]').value = categorys;
        document.querySelector('form#sortByName > input[name="income"]').value = income;
        document.querySelector('form#sortByName > input[name="deduction"]').value = deduction;
        document.querySelector('form#sortByName > input[name="start_date1"]').value = start_date;
        document.querySelector('form#sortByName > input[name="end_date1"]').value = end_date;
        document.querySelector('form#sortByName > input[name="sets"]').value = sets;
        document.querySelector('form#sortByName > input[name="full_name1"]').value = full_name;
        document.querySelector('form#sortByName > input[name="campaigns"]').value = campaigns_ids;
        document.querySelector('form#sortByName').submit();
    });

    $('#sortPhone').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
        let campaigns_ids =[];
        let campaigns = $('[name="campaigns[]"]').select2('data');
        campaigns.forEach(function(item){
            campaigns_ids.push(item.id);
        });
        let inputElements = document.querySelectorAll('.form-check-input[name="categorys[]"]');
        let inputElements1 = document.querySelectorAll('.form-check-input[name="income[]"]');
        let inputElements2 = document.querySelectorAll('.form-check-input[name="deduction[]"]');
        let inputElements3 = document.querySelectorAll('.form-check-input[name="sets[]');

        let start_date = document.querySelector('input[name="start_date"]').value;
        let end_date = document.querySelector('input[name="end_date"]').value;
        let full_name = document.querySelector('input[name="full_name"]').value;
        for(let i=0; inputElements[i]; ++i){
            if(inputElements[i].checked){
                categorys.push(inputElements[i].value);
            }
        }
        
        for(let i=0; inputElements1[i]; ++i){
            if(inputElements1[i].checked){
                income.push(inputElements1[i].value);
            }
        }

        for(let i=0; inputElements2[i]; ++i){
            if(inputElements2[i].checked){
                deduction.push(inputElements2[i].value);
            }
        }

        for(let i=0; inputElements3[i]; ++i){
            if(inputElements3[i].checked){
                sets.push(inputElements3[i].value);
            }
        }
        document.querySelector('form#sortByPhone > input[name="categorys"]').value = categorys;
        document.querySelector('form#sortByPhone > input[name="income"]').value = income;
        document.querySelector('form#sortByPhone > input[name="deduction"]').value = deduction;
        document.querySelector('form#sortByPhone > input[name="start_date1"]').value = start_date;
        document.querySelector('form#sortByPhone > input[name="end_date1"]').value = end_date;
        document.querySelector('form#sortByPhone > input[name="sets"]').value = sets;
        document.querySelector('form#sortByPhone > input[name="full_name1"]').value = full_name;
        document.querySelector('form#sortByPhone > input[name="campaigns"]').value = campaigns_ids;
        document.querySelector('form#sortByPhone').submit();
    });

    $('#sortCreated').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
        let campaigns_ids =[];
        let campaigns = $('[name="campaigns[]"]').select2('data');
        campaigns.forEach(function(item){
            campaigns_ids.push(item.id);
        });
        let inputElements = document.querySelectorAll('.form-check-input[name="categorys[]"]');
        let inputElements1 = document.querySelectorAll('.form-check-input[name="income[]"]');
        let inputElements2 = document.querySelectorAll('.form-check-input[name="deduction[]"]');
        let inputElements3 = document.querySelectorAll('.form-check-input[name="sets[]');

        let start_date = document.querySelector('input[name="start_date"]').value;
        let end_date = document.querySelector('input[name="end_date"]').value;
        let full_name = document.querySelector('input[name="full_name"]').value;
        for(let i=0; inputElements[i]; ++i){
            if(inputElements[i].checked){
                categorys.push(inputElements[i].value);
            }
        }
        
        for(let i=0; inputElements1[i]; ++i){
            if(inputElements1[i].checked){
                income.push(inputElements1[i].value);
            }
        }

        for(let i=0; inputElements2[i]; ++i){
            if(inputElements2[i].checked){
                deduction.push(inputElements2[i].value);
            }
        }

        for(let i=0; inputElements3[i]; ++i){
            if(inputElements3[i].checked){
                sets.push(inputElements3[i].value);
            }
        }
        document.querySelector('form#sortCreatedBy > input[name="categorys"]').value = categorys;
        document.querySelector('form#sortCreatedBy > input[name="income"]').value = income;
        document.querySelector('form#sortCreatedBy > input[name="deduction"]').value = deduction;
        document.querySelector('form#sortCreatedBy > input[name="start_date1"]').value = start_date;
        document.querySelector('form#sortCreatedBy > input[name="end_date1"]').value = end_date;
        document.querySelector('form#sortCreatedBy > input[name="sets"]').value = sets;
        document.querySelector('form#sortCreatedBy > input[name="full_name1"]').value = full_name;
        document.querySelector('form#sortCreatedBy > input[name="campaigns"]').value = campaigns_ids;
        document.querySelector('form#sortCreatedBy').submit();
    });

    $('#sortDate').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
        let campaigns_ids =[];
        let campaigns = $('[name="campaigns[]"]').select2('data');
        campaigns.forEach(function(item){
            campaigns_ids.push(item.id);
        });
        let inputElements = document.querySelectorAll('.form-check-input[name="categorys[]"]');
        let inputElements1 = document.querySelectorAll('.form-check-input[name="income[]"]');
        let inputElements2 = document.querySelectorAll('.form-check-input[name="deduction[]"]');
        let inputElements3 = document.querySelectorAll('.form-check-input[name="sets[]');

        let start_date = document.querySelector('input[name="start_date"]').value;
        let end_date = document.querySelector('input[name="end_date"]').value;
        let full_name = document.querySelector('input[name="full_name"]').value;
        for(let i=0; inputElements[i]; ++i){
            if(inputElements[i].checked){
                categorys.push(inputElements[i].value);
            }
        }
        
        for(let i=0; inputElements1[i]; ++i){
            if(inputElements1[i].checked){
                income.push(inputElements1[i].value);
            }
        }

        for(let i=0; inputElements2[i]; ++i){
            if(inputElements2[i].checked){
                deduction.push(inputElements2[i].value);
            }
        }

        for(let i=0; inputElements3[i]; ++i){
            if(inputElements3[i].checked){
                sets.push(inputElements3[i].value);
            }
        }
        document.querySelector('form#sortDataAdded > input[name="categorys"]').value = categorys;
        document.querySelector('form#sortDataAdded > input[name="income"]').value = income;
        document.querySelector('form#sortDataAdded > input[name="deduction"]').value = deduction;
        document.querySelector('form#sortDataAdded > input[name="start_date1"]').value = start_date;
        document.querySelector('form#sortDataAdded > input[name="end_date1"]').value = end_date;
        document.querySelector('form#sortDataAdded > input[name="sets"]').value = sets;
        document.querySelector('form#sortDataAdded > input[name="full_name1"]').value = full_name;
        document.querySelector('form#sortDataAdded > input[name="campaigns"]').value = campaigns_ids;
        document.querySelector('form#sortDataAdded').submit();
    });

    $('#sortLast').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
        let campaigns_ids =[];
        let campaigns = $('[name="campaigns[]"]').select2('data');
        campaigns.forEach(function(item){
            campaigns_ids.push(item.id);
        });
        let inputElements = document.querySelectorAll('.form-check-input[name="categorys[]"]');
        let inputElements1 = document.querySelectorAll('.form-check-input[name="income[]"]');
        let inputElements2 = document.querySelectorAll('.form-check-input[name="deduction[]"]');
        let inputElements3 = document.querySelectorAll('.form-check-input[name="sets[]');

        let start_date = document.querySelector('input[name="start_date"]').value;
        let end_date = document.querySelector('input[name="end_date"]').value;
        let full_name = document.querySelector('input[name="full_name"]').value;
        for(let i=0; inputElements[i]; ++i){
            if(inputElements[i].checked){
                categorys.push(inputElements[i].value);
            }
        }
        
        for(let i=0; inputElements1[i]; ++i){
            if(inputElements1[i].checked){
                income.push(inputElements1[i].value);
            }
        }

        for(let i=0; inputElements2[i]; ++i){
            if(inputElements2[i].checked){
                deduction.push(inputElements2[i].value);
            }
        }

        for(let i=0; inputElements3[i]; ++i){
            if(inputElements3[i].checked){
                sets.push(inputElements3[i].value);
            }
        }
        document.querySelector('form#sortLastTouch > input[name="categorys"]').value = categorys;
        document.querySelector('form#sortLastTouch > input[name="income"]').value = income;
        document.querySelector('form#sortLastTouch > input[name="deduction"]').value = deduction;
        document.querySelector('form#sortLastTouch > input[name="start_date1"]').value = start_date;
        document.querySelector('form#sortLastTouch > input[name="end_date1"]').value = end_date;
        document.querySelector('form#sortLastTouch > input[name="sets"]').value = sets;
        document.querySelector('form#sortLastTouch > input[name="full_name1"]').value = full_name;
        document.querySelector('form#sortLastTouch > input[name="campaigns"]').value = campaigns_ids;

        document.querySelector('form#sortLastTouch').submit();
    });
    $('#import_csv').on('click', function(){

    });
    $('#mobile_icon').on('click', function(){
        let x = document.getElementById('mobile_menu_container');
        if (x.className == "mobile-view-display") {
            $("#mobile_menu_container").attr('class', 'mobile-view-none');
            
          } else {
            $("#mobile_menu_container").attr('class', 'mobile-view-display');
          }
    });

    $('#backup').on('click', function(){
        console.log('clicked');

        let data = '';
        $.ajax({
            type: 'GET',
            url: "/download-sql",
            data: data,
            xhrFields: {
                responseType: 'blob'
            },
            success: function(response){
                var blob = new Blob([response]);
                var link = document.createElement('a');
                link.href = window.URL.createObjectURL(blob);
                link.download = "backup.sql";
                link.click();
                window.location.href='/admin/clients';
            },
            error: function(blob){
                console.log(blob);
            }
        });
    });
    $('.fa-trash').on('click', function(){
        
        let objEle = $(this);
        console.log(objEle.attr('delete-id'));
        let product_id = objEle.attr('delete-id');
        if (product_id) {
            var _token = token;
            $.ajax({
                url:"/product-delete",
                method:"POST",
                data:{id:product_id, _token:_token},
                success:function(data){
                    objEle.closest('div').remove();
                },
                error: function(blob){
                    console.log(blob);
                }
            });
        } else {
            objEle.closest('div').remove();
        }
    });
    $('.add-product').on('click', function(){
        console.log('clicked');
        var html_content = `<div class="m-1">`+
        `<input type="text" class="salary-input" placeholder="Product name" name="products[]">`+
       `<a class="pl-1"><i class="fa fa-trash" aria-hidden="true"></i></a>`+
       `</div>`;
        let container = document.getElementsByClassName("insurance-products");
        $('.insurance-products').append(html_content);


        $('.fa-trash').on('click', function(){
        
            let objEle = $(this);
            console.log(objEle.attr('delete-id'));
            let product_id = objEle.attr('delete-id');
            if (product_id) {
                var _token = token;
                $.ajax({
                    url:"/product-delete",
                    method:"POST",
                    data:{id:product_id, _token:_token},
                    success:function(data){
                        console.log(data);
                        objEle.closest('div').remove();
                    },
                    error: function(blob){
                        console.log(blob);
                    }
                });
            } else {
                objEle.closest('div').remove();
            }
        });
    });
});
