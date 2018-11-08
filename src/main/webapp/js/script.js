$(function(){
    var Nav_active = $(".daui_sidebar p.active")[0];
    var Nav1_ul = $(Nav_active).parent().parent()[0];
    var Nav0_ul = $(Nav1_ul).parent().parent()[0];
    $(Nav1_ul).show();

    var Nav0 = $(Nav0_ul).data('nav');
    Daui_nav0(Nav0,$(".daui_header .navs span."+Nav0));

    var Nav1_p = $(Nav1_ul).prev('p')[0];
    $(Nav1_p).removeClass('blur').addClass('active');

    $(".daui_loading").hide();

});



function Daui_nav0(team,elm)
{
    $(".daui_sidebar .navs>ul").hide();
    $(".daui_sidebar .navs>ul."+team).show();
    $(".daui_header .navs span").removeClass('active');
    $(elm).addClass('active');
    $(".daui_sidebar .title .title_txt").text($(elm).text());
}
function Daui_nav1(elm)
{
    $(".daui_sidebar .navs>ul>li>ul").hide();
    $(elm).next('ul').show();
    $(".daui_sidebar .navs>ul>li>p").removeClass('active').addClass('blur');
    $(elm).removeClass('blur').addClass('active');
}
function Daui_nav2(elm)
{
    $(".daui_sidebar .navs>ul>li>ul>li>ul").hide();
    $(elm).next('ul').show();
    $(".daui_sidebar .navs>ul>li>ul>li>p").removeClass('active').addClass('blur');
    $(elm).removeClass('blur').addClass('active');
}



function Daui_page_prompt(Url,max)
{
    var Page = prompt("请输入页码");
    if(Page == null && Page == "")
    {
        return false;
    }
    Page = parseInt(Page);
    if(isNaN(Page))
    {
        alert('输入错误');
        return false;
    }
    if(Page > max)
    {
        Page = max;
    }
    if(Page < 1)
    {
        Page = 1;
    }
    window.location.href=Url+"&page="+Page;
}


var Login_timer;
var Login_timer_url = "/";
var Login_timer_time = 1800000;
function Login_timer_set(url,time)
{
    if(url)
    {
        Login_timer_url = url;
    }
    if(time)
    {
        Login_timer_time = time;
    }
    Login_timer = window.setTimeout(function(){window.location.href = Login_timer_url},Login_timer_time);
}
function Login_timer_clear()
{
    window.clearTimeout(Login_timer);
}

function Daui_iframe(url)
{
    $('iframe').remove();
    var iframe = document.createElement('iframe');
    iframe.setAttribute('src', url);
    $("#Daui_iframe").css('display','flex');
    $("#Daui_iframe .iframe").empty().append(iframe);
}

function Daui_frame_hide()
{
    $('iframe').remove();
    $("#Daui_iframe").hide();
    $("#Daui_iframe .iframe").empty();
}



//短信发送 倒计时
function Daui_smscode(obj)
{
    var This = this;
    This.url = obj.url;
    This.btn = obj.btn;
    This.ipt = obj.ipt;
    This.sec = obj.sec?obj.sec:60;//默认秒数
    This.timer = null;
    This.second = This.sec;

    This.init = function() {
        $(This.btn).text("已发送("+This.second+")").removeClass("blue").addClass('gray');
        This.timer = setInterval(This.play,1000);
    },
        This.play = function() {
            This.second -- ;
            This.second > 0 ? $(This.btn).text("已发送("+This.second+")") : This.stop();
        },
        This.stop = function() {
            clearInterval(This.timer);
            This.second = This.sec;
            $(This.btn).text("重新获取").removeClass('gray').addClass("blue");
        },
        This.send = function() {
            if(!$(This.btn).hasClass("blue"))
            {
                return false;
            }

            $.ajax({
                url:This.url,
                type:'POST',
                dataType:"json",
                data:{mobile:This.ipt.val()},
                success: function(data){
                    if(data.code == 1) {
                        This.init();
                    } else {
                        alert(data.msg)
                    }
                },
                error:function(){
                    $('.daui_loading').hide();
                    alert('网络连接失败');
                }
            });
        }
};