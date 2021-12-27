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

    $(".dependents_edit").keyup(function(){ 
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
                $(elements_id).remove();
            }
        });
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
                url:"/user-search",
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
    });
    $("#spouse_edit").keyup(function(){ 
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
    $('.checkbox-style').on('click',function(){
        let objEle = $(this);
        console.log("kikiki");
        if (objEle.prop('checked') == true) {
            objEle.parent().siblings("div").removeClass("d-none");
            objEle.parent().siblings("div").find("input[type='hidden']").val('1');
        }else {
            objEle.parent().siblings("div").addClass("d-none");
            objEle.parent().siblings("div").find("input[type='hidden']").val('0');
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
        
        document.querySelector('input[name="categorys"]').value = categorys;
        document.querySelector('input[name="income"]').value = income;
        document.querySelector('input[name="deduction"]').value = deduction;
        document.querySelector('input[name="start_date1"]').value = start_date;
        document.querySelector('input[name="end_date1"]').value = end_date;
        document.querySelector('input[name="sets"]').value = sets;
        document.querySelector('input[name="full_name1"]').value = full_name;
        
        document.querySelector('form#sortById').submit();
    });

    $('#sortName').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
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

        document.querySelector('form#sortByName').submit();
    });

    $('#sortPhone').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
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

        document.querySelector('form#sortByPhone').submit();
    });

    $('#sortCreated').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
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

        document.querySelector('form#sortCreatedBy').submit();
    });

    $('#sortDate').on('click',function(){
        let categorys = [];
        let income = [];
        let deduction = [];
        let sets = [];
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

        document.querySelector('form#sortDataAdded').submit();
    });
});