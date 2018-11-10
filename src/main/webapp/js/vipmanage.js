$(".ci").click(function (){
    $("#success").hide();
    $("#fail").hide();
    tds = $(this).closest('tr').find('td');
    var vid = tds.eq(1).text()

    var vname = tds.eq(2).text()
    var phone = tds.eq(3).text()
    var vclass = tds.eq(4).text()
    var address = tds.eq(5).text()
    var recommendVid = tds.eq(7).text()
    var recommendPerson = tds.eq(8).text()
    var bankName = tds.eq(11).text()
    var bankNumber = tds.eq(12).text()
    $("input[name='vid']").val(vid);
    $("input[name='vName']").val(vname);
    $("input[name='phone']").val(phone);
    $("input[name='vClass']").val(vclass);
    $("input[name='recommendVid']").val(recommendVid);
    $("input[name='recommendPerson']").val(recommendPerson);
    $("input[name='address']").val(address);
    $("select").find("option:selected").text(bankName);
    $("input[name='bankNumber']").val(bankNumber);
})

$(function(){
    $(".close").click(function(){
        $("#success").hide();
        $("#fail").hide();
    });
});
$(".modify-certain").click(function(){
    var vid = $("input[name='vid']").val();
    var vname = $("input[name='vName']").val();
    var phone = $("input[name='phone']").val();
    var vclass = $("input[name='vClass']").val();
    var recommendVid = $("input[name='recommendVid']").val();
    var recommendPerson = $("input[name='recommendPerson']").val();
    var address = $("input[name='address']").val();
    var bankName = $("select").find("option:selected").text();
    var bankNumber = $("input[name='bankNumber']").val();


    $.ajax({
        url:'/modifyVip',
        type:'POST',
        dataType:"json",
        data:$("#mForm").serialize(),
        success: function(data){
            if(data.code == 1){
                $('#success').show();
            }
            tds.eq(2).text(vname);
            tds.eq(3).text(phone);
            tds.eq(4).text(vclass);
            tds.eq(5).text(address);
            tds.eq(7).text(recommendVid);
            tds.eq(8).text(recommendPerson);
            tds.eq(11).text(bankName);
            tds.eq(12).text(bankNumber);

        },
        error:function(){
            $('#fail').show();
        }
    });
})