<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="icon" href="${webRoot}/favicon.ico" type="image/x-icon"/> 
	<link rel="shortcut icon" type="image/x-icon" href="${webRoot}/favicon.ico" /> 
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-COMPATIBLE" content="IE=edge,Chrome=1">
    <!--让浏览器以最新的渲染模式渲染-->
    <!--<meta name="viewport"
          content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>-->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="renderer" content="webkit">
    <!--让国产浏览器采用高速渲染模式-->
    <title>区趣</title>
    <link rel="stylesheet" type="text/css" href="${webRoot}/plug-in/weixin/wisdom/seedPartners/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${webRoot}/plug-in/weixin/wisdom/seedPartners/css/main.css">
    <LINK rel=stylesheet href="${webRoot}/plug-in/weixin/wisdom/seedPartners/css/promotion_index.css">
    <link href="${webRoot}/plug-in/weixin/wisdom/seedPartners/css/alertMessage.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
    <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="${webRoot}/plug-in/weixin/wisdom/seedPartners/js/jquery.min.js"></script>
    <script src="${webRoot}/plug-in/weixin/wisdom/seedPartners/js/bootstrap.min.js"></script>
    <script src="${webRoot}/plug-in/weixin/wisdom/seedPartners/js/bootstrapValidator.min.js"></script>
</head>


<body>
<div id="alertMessage"></div>
<div style="display: none" id=browser_ie>
    <DIV class=brower_info>
        <DIV class=notice_info>
            <P>你的浏览器版本过低，可能导致网站不能正常访问！<BR>为了你能正常使用网站功能，请使用这些浏览器。</P></DIV>
        <DIV class=browser_list>
            <SPAN>
            <A href="http://www.google.cn/intl/zh-CN/chrome/browser/" target=_blank>
                <IMG src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/Chrome.png"><BR>Chrome
            </A>
            </SPAN>
            <SPAN><A href="http://www.firefox.com.cn/" target=_blank><IMG
                    src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/Firefox.png"><BR>Firefox
            </A></SPAN>
            <SPAN><A href="https://support.apple.com/downloads/" target=_blank><IMG
                    src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/Safari.png"><BR>Safari
            </A></SPAN>
            <SPAN><A href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie" target=_blank><IMG src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/IE.png"><BR>IE9及以上
            </A></SPAN>
        </DIV>
    </DIV>
    <div class="close" id="close"><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/close.png" /></div>
    <script type="text/javascript">
        $("document").ready(function(){
            /**关闭层**/
            $("#close").click(function(){
                $("#browser_ie").hide();
            });
        });
    </script>
</div>

<header class="whj-logo">
	
    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/logo.png" alt="" class="img-responsive hidden-xs">
</header>

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
    <!--    <li data-target="#myCarousel" data-slide-to="2"></li>-->
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active"><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/banner1.png" alt="区趣" width="100%"></div>
        <div class="item"><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/banner-01.png" alt="区趣" width="100%"></div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <!--<a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;</a>-->
</div>
<!--<section>
<div class="swiper-container">
    <div class="swiper-wrapper">

        <div class="swiper-slide nth1"></div>
        <div class="swiper-slide nth1"></div>
    </div>
    <div class="swiper-pagination"></div>
    <!-- Add Arrows
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
</div>

  </section>-->

<!--省市区联动菜单搜索-->
<section class="whj-hh">
    <div class="container whj-margin">
        <div class="row">
                  <form role="form" class="form-inline" style="text-align: center">
                <div class="form-group whj-padding">
                     <!--<lable>直辖市/省份</lable>-->
                    <select id="provinceId" name="provinceId" class="form-control whj-select" placeholder="直辖市/省份">
                        <c:forEach var="province" items="${provinceList}">
                            <option value="${province.id}">${province.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group whj-padding">
                    <!--<lable>城市</lable>-->
                    <select class="form-control" id="cityId" name="cityId">
                    </select>
                </div>
                <div class="form-group whj-padding">
                    <!-- <lable>区/县</lable>-->
                    <select class="form-control"  id="districtId" name="districtId">
                    </select>
                </div>
                <div class="form-group whj-padding">
                    <!--<lable>社区名称</lable>-->
                    <input type="text" class="form-control" name="communityName" id="communityName" placeholder="请输入您的社区名称">
                </div>
                <div class="form-group whj-padding">
                  
                    <a href="#" onclick="claim()" data-toggle="modal" type="submit" class="btn btn-default btn-block">我要认领</a>
                <!--
                     <button type="submit" class="btn btn-defa-ult btn-block">我要认领</button>
                       -->
                </div>
                </form>
        </div>
    </div>
</section>

<div class="fold-menu">
    <div class="fold-right"><i class="fold-right-img"></i></div>
    <div class="fold-menu-cent">
        <div class="whj-er"><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/er.png"></div>
        <!-- <div class="whj-cent">-->
        <p class="fold-menu-cent-size1">种子合伙人招募中</p>
        <p class="fold-menu-cent-size2">认领你的社区，即享1000元现金补贴！提升社区居民幸福感，就在区趣</p>
        <p class="fold-menu-cent-size3">详情请扫描左侧二维码向区趣团队咨询!</p>
        <!-- </div>-->
    </div>
</div>

<section>
    <header class="whj-header ">
        <h3 class="text-center whj-h3-bj">选择区趣<br/>
            <small>Choose Us</small>
        </h3>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3 whj-margin">
                <div class="thumbnail whj-div-bj whj-div-col1">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/q1.png" alt="社区专属服务系统">
                    <h5 class="text-center whj-font-color">社区专属服务系统</h5>
                    <!--<p class="thumbnail">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/t1.png" alt="通用的占位符缩略图" class="img-polaroid">
                    </p>-->
                </div>
            </div>
            <div class="col-sm-6 col-md-3 whj-margin">
                <div class="thumbnail whj-div-bj whj-div-col2">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/q2.png" alt="服务终身免费">
                    <h5 class="text-center whj-font-color">服务终身免费</h5>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 whj-margin">
                <div class="thumbnail whj-div-bj whj-div-col3">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/q3.png" alt="全国社区联盟">
                    <h5 class="text-center whj-font-color">全国社区联盟</h5>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 whj-margin">
                <div class="thumbnail whj-div-bj whj-div-col4">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/q4.png" alt="他们也在用">
                    <h5 class="text-center whj-font-color">他们也在用</h5>
                </div>
            </div>
        </div>
    </div>
</section>

<section style="background-color: #f7f7f7;">
    <header class="whj-header ">
        <h3 class="text-center whj-h3-bj">产品中心<br/>
            <small>QU Product Center</small>
        </h3>
    </header>
    <div class="container whj-margin-top">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p1-1.png" alt="公众号管理系统" class="img-polaroid"
                         onmouseover="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p1-2.png'" onmouseout="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p1-1.png'"/>
                </a>
                <h5 class="text-center font-color">公众号管理系统<br/>
                    <small>强大底层支持，轻松玩转公众号</small>
                </h5>
            </div>
            <div class="col-sm-6 col-md-3">

                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p2-1.png" alt="居民信息网格管理系统" class="img-polaroid"
                         onmouseover="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p2-2.png'" onmouseout="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p2-1.png'"/>
                </a>
                <h5 class="text-center font-color">居民信息网格管理系统<br/>
                    <small>你的社区大数据</small>
                </h5>
            </div>
            <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p3-1.png" alt="社区服务管理系统" class="img-polaroid"
                         onmouseover="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p3-2.png'" onmouseout="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p3-1.png'"/>
                </a>
                <h5 class="text-center font-color">社区服务管理系统<br/>
                    <small>为你的社区提供身边服务</small>
                </h5>
            </div>
            <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p4-1.png" alt="沟通服务管理系统" class="img-polaroid img-responsive"
                         onmouseover="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p4-2.png'" onmouseout="this.src='${webRoot}/plug-in/weixin/wisdom/seedPartners/images/p4-1.png'"/>
                </a>
                <h5 class="text-center font-color">沟通服务管理系统<br/>
                    <small>全方位沟通管理</small>
                </h5>
            </div>
        </div>
    </div>
</section>

<section>
    <header class="whj-header ">
        <h3 class="text-center whj-h3-bj">运营支持<br/>
            <small>QU Operation Support</small>
        </h3>
    </header>
    <div class="container whj-margin-top">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/s1.png" alt="公众号申请攻略" class="img-polaroid">
                </a>
                <h5 class="text-center">公众号申请攻略<br/>
                    <small>一对一运营人员全程协助</small>
                </h5>
            </div>
            <div class="col-sm-6 col-md-3">

                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/s2.png" alt="公众号建设全教程" class="img-polaroid">
                </a>
                <h5 class="text-center">公众号建设全教程<br/>
                    <small>区趣平台快速创建您的社区</small>
                </h5>
            </div>
            <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/s3.png" alt="各种系统功能使用全教程" class="img-polaroid">
                </a>
                <h5 class="text-center">各种系统功能使用全教程<br/>
                    <small>如何使用带帮教</small>
                </h5>
            </div>
            <div class="col-sm-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/s4.png" alt="需求意见全员倾听" class="img-polaroid">
                </a>
                <h5 class="text-center">需求意见全员倾听<br/>
                    <small>有需求，找小趣</small>
                </h5>
            </div>
        </div>
    </div>
</section>

<section style="background-color: #f7f7f7;">
    <header class="whj-header ">
        <h3 class="text-center whj-h3-bj">团队<br/>
            <small>QU Team</small>
        </h3>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">陶小纯</br>
                        <small>产品经理</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/taoran.png" width="150" height="150" alt="陶小纯"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">努力实现互联网+社区梦想！您有新需求请通【智慧微城市】公众号与我联系</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">庄冰霖</br>
                        <small>软件攻城狮</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/binling.png" width="150" height="150" alt="庄冰霖"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">打造最好的社区政务平台，我们一直在努力</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">亮子</br>
                        <small>软件攻城狮</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/zhanliang.png" width="150" height="150" alt="亮子"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">您有新需求请通【智慧微城市】公众号与我联系</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">魏佳斌</br>
                        <small>软件攻城狮</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/jiabin.png" width="150" height="150" alt="陶小纯"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">你们的需求是我们前进的动力。</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">灵之韵</br>
                        <small>前端攻城狮</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/hongjian.png" width="150" height="150" alt="灵之韵"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">良好的用户体验，是一个产品对客户的尊重的体现。</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">春之夏</br>
                        <small>市场运营</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/chunxia.png" width="150" height="150" alt="春之夏"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">我是运营小当家，有事请找我！</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">饭饭酱</br>
                        <small>UI设计师</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/yifan.png" width="150" height="150" alt="饭饭酱"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">叫我视觉设计师，不要叫美工!</p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 col-sm-6">
                <div class="whj-id">
                    <h5 class="text-center">王英英</br>
                        <small>测试攻城狮</small>
                    </h5>
                    <div class="whj-imgg">
                        <img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/wangying.png" width="150" height="150" alt="王英英"
                             class="img-circle center-block img-responsive">
                        <p class="whj-width center-block">只愿，你被社区温暖对待!</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section style="background-color:#252e3a;">

    <p class="text-center whj-about">关于我们</p>

    <div class="container text-center">
        <p>区趣隶属于智慧神州（北京）科技有限公司，致力于为全国社区工作者打造最具活力的互联网+社区平台。</p>
        <p><i><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/ico1.png"> </i>北京市海淀区上地九街9号数码科技广场南区6层</p>
        <p><i><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/ico2.png"> </i>ququfun@sina.com</p>
        <p><i><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/ico3.png"> </i>010-82705480</p>
    </div>
</section>

<footer class="text-center whj-footer">
    @区趣，Inc
</footer>

<!--弹出层  恭喜注册成功按钮进入-->
<div id="regSuccess1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog whj-modal-size">
        <div class="modal-content">
            <div class="modal-body text-center whj-font-size-bold font-color">
                <p class="whj-padd"><img src="${webRoot}/plug-in/weixin/wisdom/seedPartners/images/success.png"></p>
                恭喜你注册成功！
                <p class="whj-font">请点击下方按钮进入区趣！</p>
                <button type="submit"  class="btn btn-default whj-modal-width whj-margin" ng-click="save()" data-dismiss="modal">确定
                </button>
            </div>
            <!-- <div class="modal-footer">
                 <button type="button" class="btn btn-default whj-modal-width" data-dismiss="modal">确定</button>
             </div>-->
        </div>
    </div>
</div><!--弹出层  恭喜注册成功按钮进入-->

<!--弹出层  认领-->
<div id="claim" class="modal fade" role="dialog"  aria-hidden="true">

    <div class="modal-dialog whj-modal-size">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title text-center font-color whj-nei" id="myModalLabel">我要认领</h4>
            </div>
			
			
             <div class="modal-body">
                <p class="whj-modal-p text-center">请填写您的个人信息，运营人员将于24小时内与您联系！</p>
                <form id="frmCreate" action="wisdomSeedPartnersController.do?create" class="form-horizontal whj-center" method="post">
            <input type="hidden" name="province.id" id="hidProvinceId" value="" />
            <input type="hidden" name="city.id" id="hidCityId" value="" />
            <input type="hidden" name="district.id" id="hidDistrictId" value="" />
            <input type="hidden" name="community.cname" id="hidCommunityName" value="" />
                    <div class="form-group">
                        <label class="col-lg-3 control-label whj-margin-15">姓名<i class="xxx">*</i></label>
                        <div class="col-lg-10 whj-margin-15">
                            <input type="text" class="form-control" placeholder="请输入您的名字"
                                   name="name" id="name" maxlength="45"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label whj-margin-15">职务<i class="xxx">*</i></label>
                        <div class="col-lg-10 whj-margin-15">
                            <input type="text" class="form-control" placeholder="请输入您的职务"
                                   name="job" id="job"   maxlength="45"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label whj-margin-15">电话<i class="xxx">*</i></label>
                        <div class="col-lg-10 whj-margin-15">
                            <input type="text" class="form-control" placeholder="请输入您的电话"
                                   name="user.mobilePhone" id="mobilePhone"  />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label whj-margin-15">邮箱<i class="xxx">*</i></label>
                        <div class="col-lg-10 whj-margin-15">
                            <input type="text" class="form-control" 
                             name="user.email" id="email"  placeholder="请输入您的邮箱" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label whj-margin-15">用户名<i class="xxx">*</i></label>
                        <div class="col-lg-10 whj-margin-15">
                            <input type="text" class="form-control" placeholder="请输入6-12个字符" name="user.userName" id="userName"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label whj-margin-15">密码<i class="xxx">*</i></label>
                        <div class="col-lg-10 whj-margin-15">
                            <input type="password" class="form-control" placeholder="请输入6-12个字符" name="password" id="password"/>
                        </div>
                    </div>
                    <a href="${webRoot}/webpage/weixin/wisdom/seedPartners/protocol.jsp" 
                        target="_blank"
                       class="whj-modal-left whj-afontsize">区趣社区认领协议</a>
                    <div class="form-group">
                        <div class="col-lg-12 whj-margin-top1">
                            <button type="submit" data-mode="submitted" class="btn btn-default whj-modal-width whj-margin1" style="outline: none">确定</button>
                        </div>
                    </div>
		</form>
    </div>

</div><!--弹出层  认领-->
<script type="text/javascript" src="${webRoot}/plug-in/weixin/core/province/province.js"></script>



<script type="text/javascript">
 	$("document").ready(function(){
 		var $pronivceid = $("#provinceId");
 		var $cityid = $("#cityId");
 		var $districtId = $("#districtId");
 		var communityUrl = "wisdomSeedPartnersController.do?getCommunitys&";
 		var $communityId = $("#communityId");
 		
 		// 根据CITYID，显示社区
 		var assignementCommunity = function(url){
 			//获取json数据
 		    $.getJSON(url,function(data){
 		       var areaJson = data;
 		       var temp_html;
 		       $.each(areaJson.obj,function(i,cummunity){
 		           temp_html+="<option value='"+ cummunity.id +"' ";
 		  		 	if("${wisdomSeedPartnersPage.community.id}" == cummunity.id){
 		  		    	temp_html += " selected='selected'";
 		  		    }
 		           temp_html += ">" + cummunity.cname + "</option>";
 		       });
 		     
 		       $communityId.html(temp_html);
 		   });
 		}
 		

 		// 城市变动
 		$cityid.change(function(){
 			var cityId = $cityid.val();
			if(cityId==""){
				cityId = 1;
			}
 			var _url = communityUrl + "cityId=" + cityId;
 			assignementCommunity(_url);
 		});
 		
 		//区变动
 		$districtId.change(function(){
 			var districtId = $districtId.val();
			if(districtId==""){
				districtId = 1;
			}
 			var _url = communityUrl + "districtId=" + districtId;
 			assignementCommunity(_url);
 		});
 		
 		var cityId = $cityid.val();
		if(cityId == "" || cityId == null){
			cityId = 1;
		}
		var _url = communityUrl + "cityId=" + cityId;
 		assignementCommunity(_url);
 	});
 </script>
 
<script>
//显示错误提示
function showError(str) {
    $('#alertMessage').addClass('error').html(str).stop(true, true).show().animate({
        opacity : 1,
        right : '0'
    }, 500);

}

function hideTop() {
    $('#alertMessage').animate({
        opacity : 0,
        right : '-20'
    }, 500, function() {
        $(this).hide();
    });
}
    /**弹出层调用**/
    function claim() {

        $.alert({
    title: 'Alert!',
    content: 'Simple alert!',
    confirm: function(){
        $.alert('Confirmed!'); // shorthand.
    }
});

		//获取 省ID
		$("#hidProvinceId").val($("#provinceId").val());
		// 获取 市ID
    	$("#hidCityId").val($("#cityId").val());
    	// 获取区域ID
        $("#hidDistrictId").val($("#districtId").val());
    	
    	var $communityName = $("#communityName").val();
    	if($communityName == ""){
    		showError("请输入您的社区名称", 500);
            setTimeout('hideTop()', 1000);
    	}else{
            // 获取社区名称
            $("#hidCommunityName").val($("#communityName").val());
            $('#claim').modal('show');
        }
    }

    /**轮播图滚动间隔时间**/
    $('.carousel').carousel({
        interval: 3000
    });

    /**侧边栏隐藏显示效果**/
    $(".fold-right").bind("click", function () {
        $(this).next(".fold-menu-cent").toggle().animate("100");
        var c=$(this).children("i");
        if(c.hasClass('fold-right-img'))
        {
            c.removeClass("fold-right-img").addClass("fold-right-img1");
        }
        else
        {
            c.removeClass("fold-right-img1").addClass("fold-right-img");
        }
    });

    /**我们团队介绍效果**/
    $(function () {
        $(".whj-imgg img").mouseover(function () {
            $(this).next("p").show();
        });
        $(".whj-imgg img").mouseout(function () {
            $(this).next("p").hide();
        });
    })

    if (!$.support.leadingWhitespace) {
        $("#browser_ie").show();
    }

    /**弹出层认领效果**/
    $(document).ready(function() {
        $("#icheckForm").bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                communityName: {
                    validators: {
                        notEmpty: {
                            message: '请输入您的社区名称'
                        }
                    }
                }
            }
        });


        $('#frmCreate')
                .bootstrapValidator({
                    message: 'This value is not valid',
                    //live: 'submitted',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        name:{
                            message:'姓名无效',
                            validators:{
                                notEmpty:{
                                    message:'姓名不能为空'
                                }
                            }
                        },
                        job:{
                            message:'职务无效',
                            validators:{
                                notEmpty:{
                                    message:'职务不能为空'
                                }
                            }
                        },
                        "user.mobilePhone":{
                            message: '电话无效',
                            validators:{
                                notEmpty:{
                                    message:'电话不能为空'
                                },
                                // /^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/
                                regexp: {
                                 regexp: /^(((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?)|(1\d{10})$/,
                                 message: '电话输入格式无效'
                                }
                            }
                        },
                        "user.userName": {
                            message: '用户名无效！',
                            validators: {
                                notEmpty: {
                                    message: '用户名不能为空！'
                                },
                                stringLength: {
                                    min: 6,
                                    max: 12,
                                    message: '请以字母、数字开头，输入6-12位'
                                },
                                callback: {
                                    message: '用户名已经存在',
                                    callback: function (value, validator) {
                                        var res = true;
                                        var userName = $("#userName").val();
                                        $.ajax({
                                            url : 'duplicateCheckAction.do?doDuplicateCheck',
                                            async:false,
                                            data : {
                                                tableName : 't_s_base_user',
                                                fieldName : 'userName',
                                                fieldVlaue: userName
                                            },
                                            dataType : 'json',
                                            success : function(response) {
                                                    if(response.success == false){
                                                       res = false;
                                                    }
                                            }
                                        });
                                        return res;
                                    }
                                }
                                /*remote: {
                                 url: 'remote.php',
                                 message: 'The username is not available'
                                 },*/
                                /*regexp: {
                                 regexp: /^[a-zA-Z0-9_\.]+$/,
                                 message: '请以字母开头'
                                 }*/
                            }
                        },
                        "user.email": {
                            validators: {
                                notEmpty: {
                                    message: '邮箱不能为空'
                                },
                                emailAddress: {
                                    message: '邮箱格式不正确'
                                }
                            }
                        },
                        password: {
                            validators: {
                                notEmpty: {
                                    message: '密码不能为空'
                                }
                            }
                        }
                    }
                });

        $('button[data-mode]').click(function() {
            $('#frmCreate').data('bootstrapValidator').setLiveMode($(this).attr('data-mode'));
        });

    });
</script>
</body>
</html>