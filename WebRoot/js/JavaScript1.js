
//页面的数量
var pagenumber = 0;
//一页的产品的数量
var numOfProdOnePage = 8;
//总共产品的数量
var talNumOfPro = 0;
//页面数显示的数量
var displayNumber = 0;
//导航栏
var stringHref = "#";
var stringHrefValue = "";
//品牌链接
var stringGrand = "#";
var stringGrandValue = "";


$(document).ready(function () {

	var obj = $("#product").val();
    alert(obj);

    pagenumber = ((talNumOfPro + numOfProdOnePage - 1) / numOfProdOnePage).toFixed(0);
    displayNumber = (pagenumber > 3) ? pagenumber : 3;
    Create100(talNumOfPro, "content");

    //产品页面选择导航
    CreatePaginate();


});

//产品页面选择导航
function CreatePaginate() {
    $(".divDemo5In").paginate({
        count: pagenumber,
        start: 1,
        display: 3,
        border: false,
        //border_color: '#555;',
        text_color: '#000',
        background_color: '#fff',
        //border_hover_color: '#f00',
        text_hover_color: '#fff',
        background_hover_color: '#f00',
        images: false,
        mouse: 'press',
        onChange: function (page) {
            //$('#paginationdemo>.current').removeClass('current').hide();
            //$('#p' + page).addClass('current').show();
            hideAndShow(page);
        }
    });
}



//生成产品（数量，容器ID）
function Create100(number, stringContinerId) {

    $("#" + stringContinerId).empty();

    for (var i = 0; i <= number; i++) {
        CreateDom(stringContinerId, "../../images/aaa.png", i, 1, "你是笨蛋你是笨蛋你是笨蛋你是你是笨蛋你是笨蛋", "#");//,y
    }
    $("#spanTolNumOfProduct").text(number);
    hideAndShow(1);
}


//显示产品(页面数)----------页面导航促使
function hideAndShow(pageNumber) {

    var start = (pageNumber - 1) * numOfProdOnePage;
    var end = start + numOfProdOnePage;

    //$("#content>div").hide();
    $("#content>div").css("display", "none");
    $("#content>div:lt(" + end + ")").css("display", "block");
    $("#content>div:lt(" + start + ")").css("display", "none");


}




//生成产品（容器ID，图片地址，价格，期数，链接名，产品链接）
function CreateDom(stringContinerId, stringImgSrc, stringPrice, stringMonthNumber, stringIndex, stringProductLink) {

    //产品DIV
    var divProdct = $("<div/>").css({ "float": "left", "border": "1px solid #ddd", "padding": "10px", "margin": "8px", "height": "340px", "width": "231px" }).appendTo($("#" + stringContinerId));
    divProdct.css("display", "none");
    //产品链接-》容纳图片的产品名字介绍
    var aProductLink = $("<a href=" + stringProductLink + "/>").css({
        "width": "229px", "margin": "0px", "padding": "0px"
    }).appendTo(divProdct);

    //图片
    var imgProduct = $("<img/>").css({
        "width": "229px",
        "height": " 229px", "src": "../images/aaa.png"
    }).appendTo(aProductLink);
    imgProduct.attr("src", stringImgSrc);

    //链接
    var pIndex = $("<p>" + stringIndex + "</p>").appendTo(aProductLink);

    //售价
    var pPrice = $("<p>售价：￥</p>").appendTo(divProdct);
    pPrice.append(stringPrice);
    //月供
    var pMonthlyPayment = $("<p>月供：￥</p>").appendTo(divProdct);

    var spanMonthlyPaymentCount = $("<span></span>").css({ "font-size": "16px", "color": "#f00" }).appendTo(pMonthlyPayment);

    spanMonthlyPaymentCount.append("" + (stringPrice / stringMonthNumber).toFixed(2));

    pMonthlyPayment.append("&nbsp; x &nbsp;" + stringMonthNumber + "期");

}
