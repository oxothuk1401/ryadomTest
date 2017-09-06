// function showPanel() {
//     $("#vacansy").show(function () {
//         $("#hide").show();
//         $("#show").hide();
//     });
// }
// function hidePanel() {
//     $("#vacansy").hide(function () {
//         $("#hide").hide();
//         $("#show").show();
//     });
// }
// $(document).ready( function () {
//     $("#hide").bind("click", hidePanel);
//     $("#show").bind("click", showPanel);
// });


// показать спрятать элемент
function viewdiv(id){
        var el=document.getElementById(id);
        if(el.style.display=="block"){
            el.style.display="none";
        } else {
            el.style.display="block";
        }
    }
// сохранить картинку на комп
function save(id) {
    // var gh = "https://ih1.redbubble.net/image.109336634.1604/flat,550x550,075,f.u1.jpg"
    var a  = document.getElementById(id);
    a.href = "/resources/img/id";
    a.download = 'image.png';


}