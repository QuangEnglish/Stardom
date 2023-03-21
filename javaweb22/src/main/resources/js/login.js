function myClickLogin() {
    var element = document.getElementById("ant-tabs-ink-bar");
    element.classList.remove("ant-tabs-ink-bar-animated2");
    element.classList.add("ant-tabs-ink-bar-animated");
    document.getElementById("root-login-p").style.color = "#b66dff";
    document.getElementById("root-register-p").style.color = "#bcb5b5";
    var zindex = document.getElementById("content-login--pos").classList.add("z-index-login");
  }

  function myClickRegister() {
    var element = document.getElementById("ant-tabs-ink-bar");
    element.classList.remove("ant-tabs-ink-bar-animated");
    element.classList.add("ant-tabs-ink-bar-animated2");
    var zindex = document.getElementById("content-login--pos").classList.remove("z-index-login");
    document.getElementById("root-login-p").style.color = "#bcb5b5";
    document.getElementById("root-register-p").style.color = "#b66dff";
  }

  function requestCode() {
    var element = document.getElementById("ant-tabs-ink-bar");
    element.classList.remove("ant-tabs-ink-bar-animated");
    element.classList.add("ant-tabs-ink-bar-animated2");
    var zindex = document.getElementById("content-login--pos").classList.remove("z-index-login");
    document.getElementById("root-login-p").style.color = "#bcb5b5";
    document.getElementById("root-register-p").style.color = "#b66dff";
  }

  $(document).ready(function() {
    $('body').on('click','#button-request', function() {
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    var mobile = $('#input-phone-is').val();
    var otp = $('#input-phone-otp').val();
    if(mobile !==''){
        if (vnf_regex.test(mobile) == false) 
        {
            alert('Số điện thoại của bạn không đúng định dạng!');
            jQuery("#input-phone-otp").attr("disabled", 'disabled');
            jQuery("#button-phone-otp").attr("disabled", 'disabled');
            jQuery("#input-phone-otp").attr('style','background-color: #bcb5b5;');
            jQuery("#button-phone-otp").attr('style','background-color: #bcb5b5;');

         }else{
             alert('Số điện thoại của bạn hợp lệ!');
             jQuery("#input-phone-otp").removeAttr("disabled");
             jQuery("#button-phone-otp").removeAttr("disabled");
             jQuery("#input-phone-otp").attr('style','background-color: #fff;');
             jQuery("#button-phone-otp").attr('style','background-color: #fff;');
            //  jQuery("#input-phone-otp").attr('style','background-color: #fff;');
         }
    }else{
        alert('Bạn chưa điền số điện thoại!');
    }
    });
});