[{if ($oView->isWalleeTransaction()) }]
<hr style="background-color: #ECEFF0; height: 5px; margin: 10px 0; border: none;"><div style="background-color: white" class="clear lineBox">
	<div class="panel-heading">
		<h3 class="panel-title">[{oxmultilang ident="PAYMENT_INFORMATION"}]</h3>
	</div>
	<div class="panel-body">
		<div id="Wallee-iframe-container">
			<div id="Wallee-iframe-spinner" class="wallee-loader"></div>
		</div>
	</div>
</div>
    [{capture name=WalleeInitScript assign=WalleeInitScript}]
    function initWalleeIframe(){
        if(typeof Wallee === 'undefined') {
            setTimeout(initWalleeIframe, 500);
        } else {
            Wallee.init('[{$oView->getWalleePaymentId()}]');
        }
    }
    jQuery().ready(initWalleeIframe);
    [{/capture}]
[{oxscript add=$WalleeInitScript}]
[{oxscript include=$oView->getWalleeJavascriptUrl()}]
[{oxscript include=$oViewConf->getModuleUrl("wleWallee", "out/src/js/wallee.js")}]
[{oxstyle include=$oViewConf->getModuleUrl("wleWallee", "out/src/css/spinner.css")}]
[{/if}]
[{$smarty.block.parent}]