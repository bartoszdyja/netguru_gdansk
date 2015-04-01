// $(document).ready(function() {
//     $("#comments-link").click(function() {
//     	document.getElementById('comments-link').style.display = "none";
//     	document.getElementById('cmm').style.display = "block";
//     	localStorage.setItem('show', 'true');
//     });
// });

$(document).ready(function(){
    // use localStorage.removeItem('show'); to unset an item
    var show = sessionStorage.getItem('show');
    if(show === 'true'){
        $('#cmm').show();
        $('#comments-link').hide();
    }
    
    $("#comments-link").click(function(event){
        event.preventDefault();
        $('#comments-link').hide();
        sessionStorage.setItem('hide', 'true');
        $('#cmm').show();
        sessionStorage.setItem('show', 'true');


    });
});