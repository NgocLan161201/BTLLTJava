/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */


function plus() {
    var t = document.getElementById("quantity").value;
    document.getElementById("quantity").value = parseInt(t) + 1;
}
function minus() {
    var t = document.getElementById("quantity").value;
    if(parseInt(t) > 1) 
        document.getElementById("quantity").value = parseInt(t) - 1;
}