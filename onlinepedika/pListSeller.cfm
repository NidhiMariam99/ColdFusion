<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Online Pedika</title>
		<link rel="icon" href="img/mainLogo.png">
		<link rel="stylesheet" type="text/css" href="css/pList.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
		<script src="js/pList.js"></script>
	</head>
	<body>
		<cfoutput>
			<div class="header">
                <div class="header_left">
                    <img src="img/mainLogo.png">
                    <h3>Online Peedika</h3>
                </div>
                
                <div class="header_right">
                    <img src="img/cartLogo.png">
                    <h3>Cart</h3>
                </div>
            </div>
            <div class="details">
                <div class="cartList">
                    <div class="right-body">
                        <div class="right-bodyCol ">
                            <div class="productDetails">
                                <div class="productImg">
                                    <img src="./images/1.jpeg" class="productImage" height=60px>
                                </div>
                                <div>
                                    <div class="productName">
                                        <p>Redmi 9Pro sport (Carbon,64 GB ) (4GB RAM)</p>
                                    </div>
                                    <div class="productDesc">
                                        <div class="productDescLine">
                                            <p class="productSeller">Seller : </p>
                                            <div class="prodPriceDetails">
                                                <p class="prodCurrPrice">₹ 699</p>
                                                <p class="prodOrgPrice">₹ 799</p>
                                                <p class="prodOff">10% Off</p>
                                            </div>
                                            <p class="productDescLine">quantity</p>
                                        </div>
                                    </div>
                                    <button type="continue" onclick="deleteForm()">DELETE</button>
                                </div>
                                <div>
                                    <p class="priceDet">₹10,000</p>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
                <div class="priceDetails">
                    <div class="Price">
                        <h2>PRICE DETAILS</h2>
                        <div class="P1">
                            <h4>Total MRP</h4>
                            <div class="P1_P">
                                <h6>₹ 699</h6>
                            </div>
                        </div>
                        <div class="P2">
                            <h4>Discount on MRP</h4>
                            <div class="P2_P">
                                <h6>₹ 280</h6>
                            </div>
                        </div>
                        <div class="P3">
                            <h4>Coupon Discount</h4>
                            <h7>Apply Coupon</h7>
                        </div>
                        <div class="P4">
                            <h4>Shipping Charges</h4>
                            <div class="P4_P">
                                <h6>₹ 99</h6>
                            </div>
                        </div>
                    </div>
        
                    <div class="Total-P">
                        <h3>Total Amount</h3>
                        <div class="TP_P">
                            <h3>₹ 518</h3>
                        </div>
                    </div>
                </div>
			</div>
            <div class="delete-item" id="deleteForm">
				<div class="delete">
					<form action="deleteAction.cfm" method="post" autocomplete="off">
						<h5>Are you sure you want to remove this item?</h5>
						<input type="hidden" name="deleteId" id="deleteId">
						<input type="button" value="CANCEL" name="no" class="deleteButton" onclick="closeDelete()">
						<input type="submit" value="REMOVE" name="yes" class="deleteButton">
					</form>
				</div>
			</div>
        </cfoutput>    
    </body>
</html>        



       