/**
 * Created by limingxing on 13/3/16.
 */
var CashPage = function () {

    var initButtons = function () {
        $("#btnSave").bind("click", function(){
            var textVoucherName = $("#textVoucherName").val();
            var textDenomination = $("#textDenomination").val();
            var textAmount = $("#textAmount").val();
            var textVoucherFromTime = $("#textVoucherFromTime").val();
            var textVoucherToTime = $("#textVoucherToTime").val();
            var textLimit = $("#textLimit").val();

            CashPage.saveVoucher(textVoucherName, textDenomination, textAmount, textVoucherFromTime, textVoucherToTime, textLimit);
        });
    }

    return {
        init: function () {
            initButtons();
        },

        saveVoucher: function(voucherName, denomination, amount, voucherFromTime, voucherToTime, limit){
            var voucher = {"name" : voucherName, "denomination" : denomination};
            $.ajax({
                method: "POST",
                dataType: "json",
                url: "/vouchers/cash/create",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({"voucher" : voucher})
            })
            .done(function( msg ) {
                alert( "Data Saved: " + msg );
            });
        }

    };
}();

$(document).ready(function() {
    CashPage.init();
});