<div class="spluvkorzbg">
		<center style="color:#fac021;font-family:OpenSans-Bold;font-size:18px;padding-top: 20px;">КОРЗИНА</center>
		<div style="float:right;">
			<a href="javascript:void;" onclick="klozekorz();"><img class="KREST" src="../../templates/main/images/krestclose.png"></a>
		</div>
		<div class="korzinkablockover">
		
				
		</div>
		<div id="opapahsdfgddsdf" style="margin-right:50px;float:right;font-family:arial;font-style:italic;color:#626c74;font-size:14px;">
		<img src="../../templates/main/images/costvisyak.png">Общая сумма : <span style="color:#c88735;font-size:24px;font-family:OpenSans-Semibold">0</span> <span style="font-size:24px;font-family:OpenSans-Semibold;color:#68261e"><STRIKE>Р</STRIKE></span>
		</div>
		
<div style="width:180px;margin:70px auto;">
				<a href="javascript:void()" onclick="oformlenieshow()">
					<img  class="incorzoformleniebtn" src="../../templates/main/images/ofromzakbtn.png">
				</a>
</div>
	
	</div>
<script>
function skinutb(tovar){
	$.ajax({
          type: 'GET',
          url: 'functions/skidkin.php@tovar='+tovar,
		  success: $('.skidochkin').remove(),
		  })
}
</script>
	