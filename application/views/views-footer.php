
<!-- SPOSOBU OPLATU -->
<div class="oplsposb">
    <div class="sposoplbkd"><img src="/template/main/images/oplsos/yan.png"></div>
    <div class="sposoplbkd"><img src="/template/main/images/oplsos/qui.png"></div>
    <div class="sposoplbkd"><img src="/template/main/images/oplsos/paypal.png"></div>
    <div class="sposoplbkd"><img src="/template/main/images/oplsos/wm.png"></div>
    <div class="sposoplbkd"><img src="/template/main/images/oplsos/visa.png"></div>
    <div class="sposoplbkd"><img src="/template/main/images/oplsos/skrill.png"></div>
</div>
<div class="overfooter">
    World of Warcraft tm and Blizzard Entertainment are registered trademarks of Blizzard Entertainment Inc. in U.S.A. and/or other countries. </br>
    These terms and all related materials, logos, and images are copyright © Blizzard Entertainment. </br>
    NKboost.com is in no way associated with or endorsed by Blizzard Entertainment™. </br>
    NKboost.com is not selling wow ingame items, only offers you diffirent services to make your ingame skill better and gifting you ingame items. </br>
    NKboost.com 2014. All Rights Reserved. Coded by

    </center>
</div>
<div class="vspluvbg" id="korzinkovets">
    <div class="spluvkorzbg">
        <center style="color:#fac021;font-family:OpenSans-Bold;font-size:18px;padding-top: 20px;">КОРЗИНА</center>
        <div style="float:right;">
            <a href="javascript:void;" onclick="klozekorz();"><img class="KREST" src="/template/main/images/krestclose.png"></a>
        </div>
        <div class="korzinkablockover">


        </div>
        <div id="opapahsdfgddsdf" style="margin-right:50px;float:right;font-family:arial;font-style:italic;color:#626c74;font-size:14px;">
            <img src="/template/main/images/costvisyak.png">Общая сумма : <span style="color:#c88735;font-size:24px;font-family:OpenSans-Semibold">0</span> <span style="font-size:24px;font-family:OpenSans-Semibold;color:#68261e"><STRIKE>Р</STRIKE></span>
        </div>

        <div style="width:180px;margin:40px auto;">
            <a href="javascript:void()" onclick="oformlenieshow()">
                <img  class="incorzoformleniebtn" src="/template/main/images/ofromzakbtn.png">
            </a>
        </div>

    </div>

</div>
<div class="vspluvbg" id="oformlenie">
    <div class="spluvoformbg">
        <center style="color:#fac021;font-family:OpenSans-Bold;font-size:18px;padding-top: 20px;">ОФОРМЛЕНИЕ ЗАКАЗА</center>
        <div style="float:right;">
            <a href="javascript:void;" onclick="oformclose();"><img class="KREST" src="/template/main/images/krestclose.png"></a>
        </div>
        <div style="width:595px;height:300px;margin:20px auto;">
            <form action="javascript:void()" method="post" name="ofromleniy" id="ofromleniy" onsubmit="oformlenit()">
                <div style="float:left;width:272px;height:300px;line-height:29px;">
                    <center style="color:#4f5561;font-family:OpenSans-Regular;font-size:14px;">
                        Сервер<span style="color:red">*</span></br>
                        <input type="text" name="ofserver" class="oformlenieinputs" required></br>
                        Фракция<span style="color:red">*</span></br>
                        <input type="text" name="offaction" class="oformlenieinputs" required></br>
                        Email<span style="color:red">*</span></br>
                        <input type="email" name="offemail" class="oformlenieinputs" required></br>
                        BattleTag<span style="color:red">*</span></br>
                        <input type="text" name="ofbatletag" class="oformlenieinputs" required></br>
                        Skype<span style="color:red">*</span></br>
                        <input type="text" name="ofskype" class="oformlenieinputs" required></br>
                    </center>
                </div>
                <div style="float:right;width:272px;height:300px;line-height:29px;">
                    <center style="color:#4f5561;font-family:OpenSans-Regular;font-size:14px;">
                        Ссылка на персонажа<span style="color:red">*</span></br>
                        <input type="text" name="ofpersurl" class="oformlenieinputs" required></br>
                        Комментарий</br>
                        <textarea class="oformtextarea" name="ofcomment"></textarea>
                    </center>
                </div>

        </div>
        <center style="color:#4f5561;font-family:OpenSans-Regular;font-size:14px;"><span style="color:red">*</span> Обязательное к заполнению</center>
        <!-- Результат -->
        <div id="resultatoform" style="height:40px;text-align:center">
        </div>
        <input type="hidden" form="ofromleniy" name="valuta" value="" id="valuta">
        <!-- Результат -->
        <div style="width:595px;height:200px;margin:50px auto;">
            <div id="opsposbgsb" style="display:none;">
                <center style="color:#4f5561;font-family:OpenSans-Regular;font-size:14px;">Выберите удобную Вам систему оплаты :</center>
                <a href="javascript:void()" onclick="showoplata('pp');"><img style="margin:20px 0 0 38px;" src="/template/main/images/oplsos/paypal.png"></a>
                <a href="javascript:void()" onclick="showoplata('robo');oformlenit();"><img style="margin:20px 0 0 38px;" src="/template/main/images/oplsos/nkrobos.png"></a>
                <a href="javascript:void()" onclick="showoplata('skrill');"><img style="margin:20px 0 0 38px;" src="/template/main/images/oplsos/skrill.png"></a>
            </div>
            <center style="margin-top:20px;"><input form="ofromleniy" type="submit" value="" class="oformsmbtbtn"><center>

                    </form>
                    <!-- Скрытые способы оплаты -->
                    <div id="oplpp" style="display:none">
                        <center style="color:#4f5561;font-family:OpenSans-Regular;font-size:14px;">
                            Email PayPal<span style="color:red">*</span></br>
                            <input form="ofromleniy" type="email" name="ppmail" class="oformlenieinputs"></br>
                            На данную почту будет выслан счет оплаты заказа
                        </center>
                    </div>
                    <div id="skrill" style="display:none">
                        <center style="color:#4f5561;font-family:OpenSans-Regular;font-size:14px;">
                            Email Skrill<span style="color:red">*</span></br>
                            <input form="ofromleniy" type="email" name="skrillmail" class="oformlenieinputs"></br>
                            На данную почту будет выслан счет оплаты заказа
                        </center>
                    </div>
        </div>
    </div>
</div>
<div class="vspluvbg" id="registration">
    <div class="spluvregbg">
        <center style="color:#fac021;font-family:OpenSans-Bold;font-size:18px;padding-top: 20px;">РЕГИСТРАЦИЯ</center>
        <div style="float:right;">
            <a href="javascript:void;" onclick="regclose();"><img class="KREST" src="/template/main/images/krestclose.png"></a>
        </div>
        <form action="javascript:void();" method="post" name="registrform" id="registrform" onsubmit="getregister();">
            <div style="width:475px;height:400px;margin:20px auto;">
                <div style="width:236px;height:326px;float:left;text-align:center;color:#4f5561;font-family:OpenSans-Regular;font-size:14px;line-height: 30px;">
                    <center>
                        Имя<span style="color:red">*</span></br>
                        <input type="text" name="regname" class="reglenieinputs" required="required"></br>
                        Фамилия<span style="color:red">*</span></br>
                        <input type="text" name="regsoname" class="reglenieinputs" required="required"></br>
                        Email<span style="color:red">*</span></br>
                        <input type="email" name="regemail" class="reglenieinputs" required="required"></br>
                        Телефон<span style="color:red">*</span></br>
                        <input type="text" name="regtel" class="reglenieinputs" required="required"></br>
                        Страна проживания<span style="color:red">*</span></br>
                        <input type="text" name="regcountry" class="reglenieinputs" required="required"></br>
                    </center>
                </div>
                <div style="width:236px;height:326px;float:left;text-align:center;color:#4f5561;font-family:OpenSans-Regular;font-size:14px;line-height: 30px;">
                    <center>
                        Логин<span style="color:red">*</span></br>
                        <input type="text" name="reglogin" class="reglenieinputs" required="required"></br>
                        Пароль<span style="color:red">*</span></br>
                        <input type="password" name="regpass1" class="reglenieinputs" required="required"></br>
                        Повторите пароль<span style="color:red">*</span></br>
                        <input type="password" name="regpass2" class="reglenieinputs" required="required"></br>
                        Skype<span style="color:red">*</span></br>
                        <input type="text" name="regskype" class="reglenieinputs" required="required"></br>
                        Реферальный код</br>
                        <input type="text" name="regrefer" class="reglenieinputs"></br>
                    </center>
                </div>
                <center>
                    <input type="submit" value="" class="regfrominsmnt">
                </center>
            </div>
            <div id="resultatischenf" style="width: 500px;text-align: center;margin-top:-20px;">
            </div>
        </form>
    </div>
</div>
<script>
    function lkshowblock(){
        var style=document.getElementById("lkvsplvk").style.display;
        if (style=="none"){
            $("#lkvsplvk").css("display","block");
            $("#minikorzvspl").css("display","none");
        }
        else
        {
            $("#lkvsplvk").css("display","none");
        }
    }
    function korzshowblock(){
        var style=document.getElementById("minikorzvspl").style.display;
        if (style=="none"){
            $("#minikorzvspl").css("display","block");
            $("#lkvsplvk").css("display","none");
        }
        else
        {
            $("#minikorzvspl").css("display","none");
        }
    }
    function showhccard(id,show){
        if(id!='' && show=='true')
        {
            $('#'+id).show();
            $('#'+id+'bb').addClass("animushotpr");
        }
        else {
            $('#'+id).hide();
            $('#'+id+'bb').removeClass("animushotpr");
        }
    }
</script>

<div class="vspluvbg" id="authoris">
    <div class="spluvauthbg">
        <center id="whatyouydo" style="color:#fac021;font-family:OpenSans-Bold;font-size:18px;padding-top: 20px;">АВТОРИЗАЦИЯ</center>
        <div style="float:right;">
            <a href="javascript:void;" onclick="authclose();"><img class="KREST" src="/template/main/images/krestclose.png"></a>
        </div>
        <div id="autherblocker" style="width:300px;height:280px;margin:0 auto;text-align:center;color:#4f5561;font-family:OpenSans-Regular;font-size:14px;line-height: 30px;">
            <form action="javascript:void()" method="post" name="authforma" id="authforma" onsubmit="getauther()"></br>
                Логин<span style="color:red">*</span></br>
                <input type="text" name="authlogin" class="reglenieinputs" required></br>
                Пароль<span style="color:red">*</span></br>
                <input type="password" name="authpass" class="reglenieinputs" required></br>
                <input type="submit" value="" class="authsubmiter">
            </form>
            <div id="resultauthera" style="margin-top:-10px;">
            </div>
        </div>
        <div id="repeaterpasser" style="width:300px;height:280px;margin:0 auto;text-align:center;color:#4f5561;font-family:OpenSans-Regular;font-size:14px;line-height: 30px;display:none">
            <form action="javascript:void()" method="post" name="authformarep" id="authformarep" onsubmit="getlostpass()"></br>
                Email<span style="color:red">*</span></br>
                <input type="text" name="repemail" class="reglenieinputs" required></br>
                Логин<span style="color:red">*</span></br>
                <input type="text" name="replogin" class="reglenieinputs" required></br>
                <input type="submit" value="" class="authsubmiter" id="repeattubmiter">
            </form>
            <div id="resultrepeatpass" style="margin-top:-10px;">
            </div>
        </div>
        <div style="float:left;margin: -15px 0 0 40px;">
            <a class="korzervert" href="javascript:void();" onclick="regshow();">Регистрация</a>
        </div>
        <div style="float:right;margin: -15px 32px 0 0;">
            <a class="korzervert" href="javascript:void();" id="lostpaserbtnauth" onclick="showvostpasa();">Забыли пароль?</a>
            <a class="korzervert" href="javascript:void();" id="authbackbtnauth" style="display:none" onclick="showvosauthagain();">Авторизация</a>
        </div>
    </div>
</div>
<div class="vspluvbg" id="podrobnvspl">
</div>
</body>
</html>