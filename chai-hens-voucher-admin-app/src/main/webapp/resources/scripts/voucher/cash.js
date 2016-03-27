/**
 * Created by limingxing on 13/3/16.
 */
var CashPage = function () {

    var initButtons = function () {
        $("#btnSave").bind("click", function(){
            var textVoucherName = $("#textVoucherName").val();
            var textVoucherDescription = $("#textVoucherDescription").val();
            var textDenomination = $("#textDenomination").val();
            var textVoucherEffectiveDays = $("#textVoucherEffectiveDays").val();
            var textMinimumConsumption = $("#textMinimumConsumption").val();
            var textLimit = $("#textLimit").val();

            CashPage.saveVoucher(textVoucherName, textDenomination, textVoucherEffectiveDays, textMinimumConsumption, textMinimumConsumption, textLimit);
        });
    }

    return {
        init: function () {
            initButtons();
        },

        saveVoucher: function(voucherName, descriptipn, denomination, effectiveDays, minimumConsumption, orderLimit){
            var voucher = {"name" : voucherName, "description" : descriptipn, "denomination" : denomination, "effectiveDays" : effectiveDays, "minimumConsumption" : minimumConsumption, "orderLimit" : orderLimit};
            $.ajax({
                method: "POST",
                dataType: "json",
                url: "/vouchers/cash/create",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({"voucher" : voucher})
            })
            .done(function( msg ) {
                alert("s");
            });
        }

    };
}();

$(document).ready(function() {
    CashPage.init();
});