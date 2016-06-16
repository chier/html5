<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="format-detection" content="telephone=no"/>
    <meta name="msapplication-tap-highlight" content="no"/>
    <link rel="stylesheet" href="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/css/bootstrap.min.css">
    <link rel="stylesheet" href="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/css/bootstrap-select.css">
    <link rel="stylesheet" href="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/css/main.css">
    <link rel=stylesheet href="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/css/promotion_index.css">
    <link rel="stylesheet" type="text/css" media="screen and (min-device-width: 414px) and (max-device-width: 736px) and (-webkit-min-device-pixel-ratio: 3)" href="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/css/phone6+.css" />
    <style type="text/css">
        .form-horizontal .form-group{
            margin-right:0px;
            margin-left:15px;
        }
    </style>
    <title>认领</title>
     <script src="${webRoot}/plug-in/jquery/jquery-1.11.1.min.js"></script>
    <script src="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/js/bootstrap.min.js"></script>
    <script src="${webRoot}/plug-in/jquery-plugs/jquery-validation/jquery.validate-1.13.1.js"></script>
</head>
<body style="background:url('${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/images/qq_bj.png') 0 100% fixed; background-size: 100%;">

<section id="claim">
    <!--头部-->
    <header id="claim-header">
        <div class="logo text-center"><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/mobile/images/logo.png"></div>
        <!--<div class="cloud-bj">
            <div class="cloud1"></div>
            <div class="cloud2"></div>
        </div>-->
    </header>
    <!--内容部分-->
    <div class="container">
        <div class="row">
            <p class="whj-modal-p text-center">请务必输入真实邮箱用于找回密码</p>
            <form id="defaultForm" method="post" class="form-horizontal" 
                  action="wisdomSeedPartnersController.do?mobileFrmInfo" >
                <input type="hidden" name="province.id" id="hidProvinceId" 
                    value="${provinceId}" />
                <input type="hidden" name="city.id" id="hidCityId" 
                    value="${cityId}" />
                <input type="hidden" name="district.id" id="hidDistrictId" 
                    value="${districtId}" />
                <input type="hidden" name="community.cname" id="hidCommunityName" 
                    value="${shequ}" />
                <div class="form-group col-sm-12">
                    <label class="col-xs-2 label-f">姓 名<i class="xxx">*</i></label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" name="name" id="name" 
                        placeholder="请输入您的姓名"/>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <label class="col-xs-2 label-f">职 务<i class="xxx">*</i></label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" name="job" id="job"
                        placeholder="请输入您的职务"/>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <label class="col-xs-2 label-f">电 话<i class="xxx">*</i></label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" name="user.mobilePhone"
                        id="mobilePhone"   placeholder="请输入您的联系电话"/>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <label class="col-xs-2 label-f">邮 箱<i class="xxx">*</i></label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" name="user.email"
                        id="userEmail" placeholder="请输入您的邮箱"/>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <label class="col-xs-2 label-f">用户名<i class="xxx">*</i></label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" minlength="2" name="user.userName" 
                            id="userName" placeholder="请输入6—12个字符"/>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <label class="col-xs-2 label-f">密 码<i class="xxx">*</i></label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" name="password"
                        id="password" placeholder="6—12个字符"/>
                    </div>
                </div>
                <!--确认按钮-->
                <div class="form-group">
                    <div class="col-xs-12 text-center">
                        <button type="submit" class="btn btn-warning whj-btn">确 定</button>
                        <span  class="protocol"><a href="${webRoot}/wisdomSeedPartnersController.do?mobileProtocol">区趣认领协议</a></span>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--底部-->
   <!-- <footer id="claim-footer"></footer>-->
</section>
<script type="text/javascript">
    $(function(){
        // 手机号码验证 
        jQuery.validator.addMethod("isMobile", function(value, element) { 
          var length = value.length; 
          // var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/; 
          var mobile =  /^(((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?)|(1\d{10})$/;
          return this.optional(element) || (length == 11 && mobile.test(value)); 
        }, "请正确填写您的手机号码"); 
    });
</script>
<script>
   $(document).ready(function(){
        $('.form-horizontal').validate({
            onkeyup      : false,
            errorElement : 'span',
            errorClass : 'help-block',
            focusInvalid : true,
            cleanPlaceholderError :true,
            rules : {
                name : {
                    required : true
                },
                job : {
                    required : true
                },
                "user.mobilePhone" : {
                    required : true,
                    isMobile : true
                },
                "user.userName" : {
                    required : true,
                    minlength: 6,
                    maxlength: 12,
                    remote:{                                          //验证用户名是否存在
                       type:"POST",
                       url:"${webRoot}/duplicateCheckAction.do?doDuplicateCheck",  //servlet
                       data:{
                            tableName : 't_s_base_user',
                            fieldName : 'userName',
                            fieldVlaue: function(){
                                return $("#userName").val();
                            }
                       } 
                    } 
                },
                "user.email" : {
                    required : true,
                    email: true
                },
                password : {
                    required : true,
                    minlength: 6,
                    maxlength: 12
                }
            },
            messages : {
                name : {
                    required : "姓名不能为空"
                },
                job  : {
                    required : "职务不能为空"
                },
                "user.mobilePhone" : {
                    required : "电话不能为空",
                    isMobile : "电话格式不正确"
                },
                "user.userName" : {
                    required : "用户名不能为空",
                    minlength: jQuery.validator.format("最少输入{0}字符"),
                    maxlength: jQuery.validator.format("最多输入{0}字符"),
                    remote   : jQuery.validator.format("用户名已经被注册")
                },
                "user.email" : {
                    required : "邮箱不能为空",
                    email:"邮箱格式不正确"
                },
                 password : {
                    required : "密码不能为空",
                    minlength: jQuery.validator.format("最少输入{0}字符"),
                    maxlength: jQuery.validator.format("最多输入{0}字符")
                }
            },

            highlight : function(element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            onkeyup : function(element, event){
                var elementId = element.id || element.name;
                // console.info(elementId);
                $("#" + elementId + "-error").remove();
                $(element).closest('.form-group').removeClass('has-error'); 
            },
            success : function(label) {
               // console.info(label);
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },
            //设置参数下如
            onfocusout: function(element) { 
               $(element).valid(); 
            },
            onfocusin : function(element) {
               // console.info(element);
                // $(element).attr("placeholder","");
            },
            errorPlacement : function(error, element) {
                element.parent('div').append(error);
            },
            submitHandler : function(form) {
                form.submit();
            }
        });
   });
</script>
</body>
</html>