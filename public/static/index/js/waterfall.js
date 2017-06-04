$( window ).on( "load", function(){
    waterfall();
});

/*
    parend 父级id
    pin 元素id
*/
function waterfall(){
    var $aPin = $( "#main>div" );
    var iPinW = $aPin.eq( 0 ).width();// 一个块框pin的宽
    var num = Math.floor( $( window ).width() / iPinW );//每行中能容纳的pin个数【窗口宽度除以一个块框宽度】
    //oParent.style.cssText='width:'+iPinW*num+'px;ma rgin:0 auto;';//设置父级居中样式：定宽+自动水平外边距
    $( "#main" ).css({
        'width:' : iPinW * num,
        'margin': '0 auto'
    });

    var pinHArr=[0, 0, 0];//用于存储每列中的所有块框相加的高度。

    $aPin.each( function( index, value ){
		var minHeight = pinHArr[0];
		var cole = 0;
		var top, left;
		
		for(var i = 1; i < pinHArr.length; i++) {
			if (pinHArr[i] < minHeight) {
				minHeight = pinHArr[i];
				cole = i;
			}
		}
		
		$(this).css({
			position: 'absolute',
			top: minHeight,
			left: cole * 328
		});
		
		pinHArr[cole] += $(this).height();
		
		/*
		var _load = $aPin.eq( index );
		var imgObj = new Image();
		imgObj.src = _load.attr("src");	
        var pinH = imgObj.height();
		//var pinH = $aPin.eq( index ).height();
        if( index < num ){
            pinHArr[ index ] = pinH; //第一行中的num个块框pin 先添加进数组pinHArr
        }else{
            var minH = Math.min.apply( null, pinHArr );//数组pinHArr中的最小值minH
            var minHIndex = $.inArray( minH, pinHArr );
            $( value ).css({
                'position': 'absolute',
                'top': minH + 15,
                'left': $aPin.eq( minHIndex ).position().left
            });
            //数组 最小高元素的高 + 添加上的aPin[i]块框高
            pinHArr[ minHIndex ] += $aPin.eq( index ).height() + 15;//更新添加了块框后的列高
        }
		*/
    });
}