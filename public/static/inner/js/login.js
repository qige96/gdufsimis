
	$(document).ready(function() {
    
      //输入框获得焦点-失去焦点
      $(".oaText").focus(function(){
        oaFocus(".oaText","请输入用户名");
      });
      $(".oaText").blur(function(){
        oaBlur(".oaText","请输入用户名");
      });

      //密码框获得焦点-失去焦点
      $(".oaPwd").focus(function(){
        oaFocus(".oaPwd","请输入密码");
      });
      $(".oaPwd").blur(function(){
        oaBlur(".oaPwd","请输入密码");
      });
      
      $('.oaPwd').bind('input propertychange',function(){
          if($(".oaPwd").val()==''){
              $('.oaPwd')[0].type="text";
          }else{
              $('.oaPwd')[0].type="password";
          }
      })
      
      //记住密码的同时记住账号
      $("#oaRem_password").click(function(){
          var remPassword = $("#oaRem_password").attr('checked');
          if(remPassword){
              $("#oaRem_account").attr('checked',true);
          }
      });
      //根据cookie初始化form
      var cookieAccount = $.cookie('Cxjava_account');
      var cookiePassword = $.cookie('Cxjava_password');
    // 账号
        if (cookieAccount && cookieAccount != '') {
            $('.oaText').val(cookieAccount);
            $('#oaRem_account').attr('checked', true);
    
        }
        // 密码
        if (cookiePassword && cookiePassword != '') {
            $('.oaPwd').val(cookiePassword);
            $('#oaRem_password').attr('checked', true);
        }

      //获得焦点事件；
      function oaFocus(oaEle,oaDefVal){
        $(oaEle).css("box-shadow","2px 2px 2px #bebebe");
        textVal=$(oaEle).val();
        if(textVal==oaDefVal){
          $(oaEle).val("");
          $(oaEle).css("color","#555");
        }
      }
      //失去焦点事件
      function oaBlur(oaEle,oaDefVal){
        $(oaEle).css("box-shadow","none");
        textVal=$(oaEle).val();
        if(textVal==""){
          $(oaEle).val(oaDefVal);
          $(oaEle).css("color","#bebebe");
        }else{$(oaEle).css("color","#555");}
      }
    
    Ext.ns("Ext.Authority.login");// 自定义命名空间
    login = Ext.Authority.login;// 自定义命名空间别名
    login = {
        login : ctx + "/login",
        main : ctx + "/main",
        findpwd : ctx + "/findpwd",
        register : ctx + "/register"
    };
    // 设置主题
//    Share.swapStyle('ext-all.css');
    $('.oaLogin_btn').click(function() {
    //function loginSubmit() {
        var account = $(".oaText").val();
        var passwordTxt = $(".oaPwd").val();
        if (account == "" || password == "") {
            Ext.Msg.alert('提示', '请输入用户名或密码');
        } else {
            // 用于从cookie中读取密码吗？
            var cookiePassword = Ext.state.Manager.get('Cxjava_password');
            // 判断cookie中的密码
            var password =  MD5.hex_md5(passwordTxt);
            Share.AjaxRequest({
                url : login.login,
                params : {
                    account : account,
                    password : password,
                    passwordTxt:passwordTxt
                },
                showMsg : false,
                callback : function() {
                    // 设置cookie
                    var rememberAccount = $("#oaRem_account").attr('checked');
                    var rememberPassword = $("#oaRem_password")
                            .attr('checked');
//                    var autoLogin = $('#autoLogin').attr('checked');
                    if (rememberAccount) {
                        Ext.state.Manager.set('Cxjava_account', account);
                    } else {
                        Ext.state.Manager.set('Cxjava_account', '')
                    }

                    if (rememberPassword) {
                        Ext.state.Manager.set('Cxjava_password', passwordTxt);
                    } else {
                        Ext.state.Manager.set('Cxjava_password', '');
                    }

//                    if (autoLogin) {
//                        Ext.state.Manager.set('Cxjava_autoLogin', autoLogin);
//                    } else {
//                        Ext.state.Manager.set('Cxjava_autoLogin', '');
//                    }

                    Ext.state.Manager.set('Cxjava_hasLocked', false);
                    location.href = login.main;
                },
                falseFun : function(json) {
                    // 失败后想做的个性化操作
                    if (json.msg.indexOf('密码错误') > -1) {
                        $(".oaPwd").focus().val('');
                        return;
                    }
                }
            });
        }
    });

    $("body").keydown(function(event) {
                if (event.keyCode == "13") {// keyCode=13是回车键
                    $('.oaLogin_btn').click();
                }
            });

    // 根据cookie初始化form
    login.initLoginForm = function() {
        // 取得cookie
        var cookieAccount = Ext.state.Manager.get('Cxjava_account');
        var cookiePassword = Ext.state.Manager.get('Cxjava_password');
        var cookieAutoLogin = Ext.state.Manager.get('Cxjava_autoLogin');

        // 账号
        if (cookieAccount && cookieAccount != '') {
            $('.oaText').val(cookieAccount);
            $('#oaRem_account').attr('checked', true);

        }

        // 密码
        if (cookiePassword && cookiePassword != '') {
            $('.oaPwd').val(cookiePassword);
            $('#oaRem_password').attr('checked', true);
        }

        // 自动登录

//        if (cookieAutoLogin && cookieAutoLogin != '') {
//
//            $('#autoLogin').attr('checked', true);
//            $('#onsubmit').click();
//        }
        $('.oaText').focus();
        //设置密码样式
        if($(".oaPwd").val()==''){
              $('.oaPwd')[0].type="text";
          }else{
              $('.oaPwd')[0].type="password";
          }
    }

    // 根据cookie初始化form
    login.initLoginForm();

    // 窗口大小改变时，从新设置窗口位置
    window.onrsize = function() {
        var left = ($(windwo).width() - login.loginWindow.getWidth()) / 2;
    }

    // 设置为焦点
    // 忘记密码
    login.resetPassword = function() {
        // 跳转到忘记密码
        login.findPwdWindow = new Ext.Window({
                    title : '系统将发送重置密码链接到你的注册邮箱',
                    width : 300,
                    height : 190,
                    modal : true,
                    maximizable : false,
                    resizable : false,
                    layout : 'fit',
                    plain : true,
                    autoLoad : {
                        url : login.findpwd,
                        scripts : true,
                        nocache : true
                    }
                }).show();
    }

    // 注册
    login.register = function() {
        // 跳转到注册
        location.href = login.register;
    }
//     监听事件
//    var events = "beforecopy beforepaste beforedrag contextmenu selectstart drag paste copy cut gragenter";
//    $("#account").bind(events, function(e) {
//                return false;
//            });
//    $("#password").bind(events, function(e) {
//                return false;
//            })
});
