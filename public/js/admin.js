$(document).ready(function(){
    
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
    
    
});