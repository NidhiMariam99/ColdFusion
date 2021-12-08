<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/listing.css">
    <script src="js/index.js"></script>
</head>
<body>
    <div class="flex header radius" >
        <div class=" left headerlefttoppad">
            <div class="flex" >
                <img src="./icons/book.png" class="book">
                <h2 >Online Peedika</h2>
            </div>
        </div>
        <div class="flex headerrighttoppad righthead">
            <div class="flex right" >
                <img src="./icons/logout.png" class="headericon">
                <a href="./action/logoutAction.cfm">Logout</a>
            </div>
        </div>
    </div>
    <div class="main-body flex">
        <div class="left-body ">
            <div class="filter-column ">
                <form method=post>
                    <input type="button" class="filter-heading" value="Filters">            
                    <a ><p class="filter-option" onclick="brandBlock()">Brand</p></a>
                    <div class="brand-options" id="brand-options">
                        <input type="radio" value="1"  name="brand">
                        <label>Samsung</label>
                        <input type="radio" value="2" name="brand">
                        <label>Oneplus</label>
                        <input type="radio" value="3" name="brand">
                        <label>iPhone</label>
                    </div>
                    <a ><p class="filter-option" onclick="colorBlock()">Color</p></a>
                    <div class="brand-options" id="brand-options-color">
                        <input type="radio" value="1" name="color">
                        <label>red</label>
                        <input type="radio" value="1" name="color">
                        <label>black</label>
                        <input type="radio" value="1" name="color">
                        <label>blue</label>
                    </div>
                    <a><p class="filter-option" onclick="priceBlock()">Price</p></a>
                    <div class="priceRanges"  id="priceRanges">
                        <label for="cars" class="priceRange">Minimum price Rs</label>
                        <select class="priceRange" id="filterMinPrice1">
                            <option value="null">Select value </option>
                            <option value="20000">20000 </option>
                            <option value="25000">25000</option>
                            <option value="30000">30000</option>
                            <option value="35000">35000</option>
                        </select>

                        <label class="priceRange" for="filterPrice">Maximum price Rs</label>
                        <select class="priceRange"  id="filterMaxPrice2">
                            <option value="null">Select value </option>
                            <option value="20000">40000 </option>
                            <option value="25000">55000</option>
                            <option value="30000">70000</option>
                            <option value="35000">105000</option>
                        </select>
                    </div>
                    <a ><p class="filter-option" onclick="offerBlock()">Offer</p></a>
                    <div class="brand-options" id="phone-offer" >
                        <input type="checkbox" value="1">
                        <label>5% or more</label>
                        <input type="checkbox" value="1">
                        <label>10% or more</label>
                    </div>
                    <input type="submit" value="FILTER" class="filterButton">
                </form>
            </div>
        </div>
        <div class="right-body">
            <div class="right-bodyCol ">
                <div class="productDetails flex">
                    <div class="productImg">
                        <img src="./icons/96F9J3R.jpg" class="productImage" height=60px>
                    </div>
                    <div class="productDesc">
                        <p class="productHead">
                            Redmi 9Pro sport (Carbon,64 GB ) (4GB RAM)
                        </p>
                        <div class="productDescription flex">
                            <div>
                                <input type="button" value="4.3" class="productRating">
                            </div>
                            <div class="productDescLineCol">
                                <p class="productDescLine">- 4g  balblablafgbfgbhbgfgbfgbfgb</p>
                                <p class="productDescLine">- 4g  balblablafgb</p>
                                <p class="productDescLine">- 4g  balblabla</p>
                                <p class="productDescLine">- 4g  balblablabgfb</p>
                                <p class="productDescLine">- 4g  balblablfbgfgbfbga</p>
                                <p class="productDescLine">- 4g  balblabla</p>
                            </div>
                            <div>
                                <p class="priceDet">₹10,000</p>
                            </div>
                        </div>
                    </div>

                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>