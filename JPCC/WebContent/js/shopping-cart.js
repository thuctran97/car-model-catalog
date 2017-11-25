$(function(){
	/*
	 * Bo vao gio hang 
	 */
	$("button[data-cart-add]").click(function(){
		var id = $(this).attr("data-cart-add");
		$.ajax({
			url:"shopping-cart/add.php",
			data:{id: id},
			success:function(response){
				$(".nn-cart #count").html(response[0]);
				$(".nn-cart #amount").html(response[1]);
			},
			dataType:"json"
		});
	});
	
	/*
	 * Xoa khoi gio hang 
	 */
	$("button[data-cart-remove]").click(function(){
		var id = $(this).attr("data-cart-remove");
		$.ajax({
			url:"shopping-cart/remove.php",
			data:{id: id},
			success:function(response){
				$(".nn-cart #count").html(response[0]);
				$(".nn-cart #amount").html(response[1]);
			},
			dataType:"json"
		});
		$(this).parents("tr").hide(300);
	});
	
	/*
	 * Xoa khoi gio hang 
	 */
	$("input[data-cart-update]").change(function(){
		var id = $(this).attr("data-cart-update");
		var qty = $(this).val();
		td_amt = $(this).parents("tr").find(".amt");
		$.ajax({
			url:"shopping-cart/update.php",
			data:{id: id, qty: qty},
			success:function(response){
				$(".nn-cart #count").html(response[0]);
				$(".nn-cart #amount").html(response[1]);
				td_amt.html("$"+response[2]);
			},
			dataType:"json"
		});
	});
});