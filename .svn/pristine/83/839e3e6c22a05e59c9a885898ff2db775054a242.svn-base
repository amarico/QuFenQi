
$(document).ready(function () {
    init();
    init2();
});

function init() {

    $(".labelClass").click(function () {
        $(".labelClass").removeClass("labelSelect");
        $(this).addClass("labelSelect");
        $("#productsize").attr("value",$("#"+$(this).attr("for")).attr("value"));
    });

    $(".labelColor").click(function () {

        //控制样式
        $(".labelColor").removeClass("labelSelect");
        $(this).addClass("labelSelect");
        
        $("#productcolor").attr("value",$("#"+$(this).attr("for")).attr("value"));

        hideAndShow($(this).attr("for"));

    });

    $(".divMenuItem").click(function () {

        //控制样式
        $(".divMenuItem").removeClass("divMenuItemCurrent");
        $(this).addClass("divMenuItemCurrent");

        $(".divProductDetail").removeClass("divProductDetailHide");
        $("#For-" + $(this).attr("id")).addClass("divProductDetailHide");;



    });
    $(".divProductDetail").get(0).click();



    $(".labelColor").get(0).click();
    $(".labelClass").get(0).click();
}

//显示图片(页面数)
function hideAndShow(page) {

    $(".divImageIndex> a").css("display", "none");
    $(".divImageIndex> ." + page).css({ "display": "block", "float": "left" });

    $(".divImageIndex> ." + page).get(0).click();
}

function init2() {



    //设置和显示分期月数的最大值
    $("#inputMonth").attr("max", ((parseInt($("#tdPrice").text()) - parseInt($("#inputFristMonsy").val())) / 100).toFixed(0)-1);
    $("#inputRightMonthShow").text("*（" + $("#inputMonth").attr("min") + "个月-" + $("#inputMonth").attr("max") + "个月）");

    //设置首付金额的最大值
    $("#inputFristMonsy").attr("max", (parseInt($("#tdPrice").text())) / 2);


    //设置月供的值
    UpdateMonthPayment();




    $("#inputFristMonsy").bind("change", function () {

        //判断首付输入值
        judgeValueIsNumberAndMax("inputFristMonsy")

        //改变输入月数的最大值
        $("#inputMonth").attr("max", (((parseInt($("#tdPrice").text()) - parseInt($("#inputFristMonsy").val())) / 100)+0.5).toFixed(0) - 1);
        $("#inputRightMonthShow").text("*（" + $("#inputMonth").attr("min") + "个月-" + $("#inputMonth").attr("max") + "个月）");

        //判断月数的值是否超出边界
        judgeValueIsNumberAndMax("inputMonth")

        //改变月供的值
        UpdateMonthPayment();

    });

    $("#inputMonth").bind("change", function () {

      
        //判断月数输入值
        judgeValueIsNumberAndMax("inputMonth")
        //更新月供
        UpdateMonthPayment();

    });



}

//判断输入值
function judgeValueIsNumberAndMax(ID) {  


    //取得输入值并转换成数字
    var Number = parseInt($("#"+ID).val())

    if (isNaN(Number)) {//不是数字
        $("#" + ID).attr("value", $("#" + ID).attr("min"));
    } else {//是数字
        //判断并改变数字大小
        if (Number > $("#" + ID).attr("max")) {
            $("#" + ID).attr("value", $("#" + ID).attr("max"));
        }
        else if (Number < $("#" + ID).attr("min")) {
            $("#" + ID).attr("value", $("#" + ID).attr("min"));
        }
    }

    $("#" + ID).attr("value", (parseInt($("#" + ID).attr("value"))+0.5).toFixed(0) - 1);
}


//改变月供的值，把值传到input
function UpdateMonthPayment() {

	
    //$("#tdMonthPayment").text((($("#tdPrice").text() - $("#inputFristMonsy").val()) / $("#inputMonth").val()).toFixed(1));
    $("#tdMonthPayment").text(((($("#tdPrice").text() - $("#inputFristMonsy").val()) / $("#inputMonth").val())+(($("#tdPrice").text() - $("#inputFristMonsy").val()) / $("#inputMonth").val())*$("#percent").attr("value")).toFixed(1));
    
    $("#inputMonthPayment").attr("value", $("#tdMonthPayment").text());

}