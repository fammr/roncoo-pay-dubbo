<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getScheme() + "://" + request.getServerName()
          + ":" + request.getServerPort() + request.getContextPath()
          + "/";
  session.setAttribute("path", path);
%>
<!-- 
 陈德元：



 -->
<html>
<head>
  <title>扫码支付</title>
  <script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
  <link href="${path}pay_files/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrap_header">
  <div class="header clearfix">
    <div class="logo_panel clearfix">
      <div class="logo fl"><a href="http://" target="_blank"><img src="${path}pay_files/logo.png" alt="logo"></a></div>
      <div class="lg_txt">| 支付体验平台</div>
    </div>
    <div class="fr tip_panel">
      <div class="txt">欢迎使用支付付款</div>
      <a href="">常见问题</a>
    </div>
  </div>
</div>

<div class="cashier_desk pay_ment">
  <div class="bd">
    <ul class="payment">
      <li><img src="${path}images/weixin.png" alt="微信支付"/>
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="微信支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="WEIXIN">
          <input type="hidden" name="remark" value="微信支付备注信息" /><br />
          <p class="pay_btn">
            <input type="submit" value="0.1元支付体验" />
          </p>
        </form>
      </li>
      <li><img src="${path}images/pay.png" alt="支付宝支付" />
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="支付宝支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="ALIPAY">
          <input type="hidden" name="remark" value="支付宝支付备注信息" /><br />
          <p class="pay_btn">
            <input type="submit" value="0.1元支付体验" />
          </p>
        </form>
      </li>
      <li><img src="${path}images/wang.png" alt="网关支付" />
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="网关支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="">
          <input type="hidden" name="remark" value="网关支付备注信息" /><br />
          <p class="pay_btn">
            <input type="submit" value="0.1元支付体验" />
          </p>
        </form>
      </li>
      <li><img src="${path}images/moni.png" alt="模拟支付" />
        <form action="${path}roncooPay/scanPay" method="post">
          <input type="hidden" name="productName" value="模拟支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="TEST_PAY">
          <input type="hidden" name="remark" value="模拟支付备注信息" /><br />
          <p class="pay_btn">
            <input type="submit" value="0.1元模拟支付体验" />
          </p>
        </form>
      </li>
    </ul>
  </div>
</div>

<div class="footer w100">
  <div class="copyright">Copyright © 2015-2016 陈德元（）版权所有</div>
</div>
</body>

</html>
