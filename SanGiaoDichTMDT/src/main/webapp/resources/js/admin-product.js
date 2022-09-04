/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

$(function () {
    $("#pagination-demo").twbsPagination({
        totalPages: 16,
        visiblePages: 6,
        next: "Next",
        prev: "Prev",
        onPageClick: function (event, page) {
            //fetch content and render here  
            $("#page-content").text ("Page? + page) + ?content here";
        }
    });
});
