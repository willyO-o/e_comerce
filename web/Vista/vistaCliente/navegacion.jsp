<!-- Header -->
<header class="header1">
    <!-- Header desktop -->
    <div class="container-menu-header">
        <div class="topbar">
            <div class="topbar-social">
                <a href="#" class="topbar-social-item fa fa-facebook"></a>
                <a href="#" class="topbar-social-item fa fa-instagram"></a>
                <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
            </div>

            <span class="topbar-child1">
                <span class="topbar-email">
                    SandrasBolivia@gmail.com             
                </span>
            </span>

            <div class="topbar-child2">
                

                <div class="topbar-language ">
                    <a href="?menu=registro">Registrarse</a>
                </div>
            </div>
        </div>

        <div class="wrap_header">
            <!-- Logo -->
            <a href="index.jsp" class="logo">
                <img src="img/logo.jpeg" alt="IMG-LOGO" width="100">
            </a>

            <!-- Menu -->
            <div class="wrap_menu">
                <nav class="menu">
                    <ul class="main_menu">

                        <li>
                            <a href="?menu=home">Home</a>
                        </li>
                        <li>
                            <a href="?menu=tienda">Tienda</a>
                        </li>

                        <li>
                            <a href="?menu=carrito">Carrito</a>
                        </li>

                        <li>
                            <a href="?menu=about">Nosotros</a>
                        </li>

                        <li>
                            <a href="?menu=contacto">Contacto</a>
                        </li>
                    </ul>
                </nav>
            </div>

            <!-- Header Icon -->
            <div class="header-icons">
                <a href="#" class="header-wrapicon1 dis-block"
                   <c:if test="${sessionScope.tipo == null}">  
                       type="button"  data-toggle="modal" data-target="#modal-login"
                   </c:if> 
                    <c:if test="${sessionScope.tipo != null}">  
                       role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   </c:if> 
                   >
                    <img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
                    <c:if test="${sessionScope.tipo != null}">  
                       <span class="header-icons-notify">menu</span>
                   </c:if> 
                    
                </a>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" >Uusario: <b>${sessionScope.nombre}</b> </a>
                    <a class="dropdown-item" href="Validar?accion=salir"><i class="fa fa-sign-out" aria-hidden="true"></i> Cerrar Session</a>

                </div>

                <span class="linedivide1"></span>

                <div class="header-wrapicon2">
                    <img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
                    <span class="header-icons-noti">${canCarrito}</span>

                    <!-- Header cart -->

                    <div class="header-cart header-dropdown" >
                        <div id="mini-carrito">
                            <c:set var="total"  value="${0}"/>  
                            <ul class="header-cart-wrapitem">
                                <c:forEach var = "r" items = "${sessionScope.carrito}">
                                    <li class="header-cart-item">
                                        <div class="header-cart-item-img" idpr="${r.getIdPr()}">
                                            <img src="${r.getImg()}" alt="IMG">
                                        </div>

                                        <div class="header-cart-item-txt">
                                            <a href="?menu=producto&id=${r.getIdPr()}" class="header-cart-item-name">
                                                ${r.getPro()}
                                            </a>

                                            <span class="header-cart-item-info">
                                                ${r.getCan()} x Bs.${r.getPre()}
                                            </span>
                                        </div>
                                    </li>
                                    <c:set var="total"  value="${total=total+r.getCan()*r.getPre()}"/> 
                                </c:forEach>

                            </ul>

                            <div class="header-cart-total">
                                Total: Bs. ${total}
                            </div>
                        </div>


                        <div class="header-cart-buttons">
                            <div class="header-cart-wrapbtn">
                                <!-- Button -->
                                <a href="?menu=carrito" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                    carrito
                                </a>
                            </div>

                            <div class="header-cart-wrapbtn">
                                <!-- Button -->
                                <a href="?menu=carrito" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                    Comprar
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Mobile -->
    <div class="wrap_header_mobile">
        <!-- Logo moblie -->
        <a href="index.html" class="logo-mobile">
            <img src="images/icons/logo.png" alt="IMG-LOGO">
        </a>

        <!-- Button show menu -->
        <div class="btn-show-menu">
            <!-- Header Icon mobile -->
            <div class="header-icons-mobile">
                <a href="#" class="header-wrapicon1 dis-block">
                    <img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
                </a>

                <span class="linedivide2"></span>

                <div class="header-wrapicon2">
                    <img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
                    <span class="header-icons-noti">0</span>

                    <!-- Header cart noti -->
                    <div class="header-cart header-dropdown">
                        <ul class="header-cart-wrapitem">
                            <li class="header-cart-item">
                                <div class="header-cart-item-img">
                                    <img src="images/item-cart-01.jpg" alt="IMG">
                                </div>

                                <div class="header-cart-item-txt">
                                    <a href="#" class="header-cart-item-name">
                                        White Shirt With Pleat Detail Back
                                    </a>

                                    <span class="header-cart-item-info">
                                        1 x $19.00
                                    </span>
                                </div>
                            </li>

                            <li class="header-cart-item">
                                <div class="header-cart-item-img">
                                    <img src="images/item-cart-02.jpg" alt="IMG">
                                </div>

                                <div class="header-cart-item-txt">
                                    <a href="#" class="header-cart-item-name">
                                        Converse All Star Hi Black Canvas
                                    </a>

                                    <span class="header-cart-item-info">
                                        1 x $39.00
                                    </span>
                                </div>
                            </li>

                            <li class="header-cart-item">
                                <div class="header-cart-item-img">
                                    <img src="images/item-cart-03.jpg" alt="IMG">
                                </div>

                                <div class="header-cart-item-txt">
                                    <a href="#" class="header-cart-item-name">
                                        Nixon Porter Leather Watch In Tan
                                    </a>

                                    <span class="header-cart-item-info">
                                        1 x $17.00
                                    </span>
                                </div>
                            </li>
                        </ul>

                        <div class="header-cart-total">
                            Total: $75.00
                        </div>

                        <div class="header-cart-buttons">
                            <div class="header-cart-wrapbtn">
                                <!-- Button -->
                                <a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                    View Cart
                                </a>
                            </div>

                            <div class="header-cart-wrapbtn">
                                <!-- Button -->
                                <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                                    Check Out
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </div>
        </div>
    </div>

    <!-- Menu Mobile -->
    <div class="wrap-side-menu" >
        <nav class="side-menu">
            <ul class="main-menu">
                <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
                    <span class="topbar-child1">
                        Free shipping for standard order over $100
                    </span>
                </li>

                <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
                    <div class="topbar-child2-mobile">
                        <span class="topbar-email">
                            fashe@example.com
                        </span>

                        <div class="topbar-language rs1-select2">
                            <select class="selection-1" name="time">
                                <option>USD</option>
                                <option>EUR</option>
                            </select>
                        </div>
                    </div>
                </li>

                <li class="item-topbar-mobile p-l-10">
                    <div class="topbar-social-mobile">
                        <a href="#" class="topbar-social-item fa fa-facebook"></a>
                        <a href="#" class="topbar-social-item fa fa-instagram"></a>
                        <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
                        <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
                        <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
                    </div>
                </li>

                <li class="item-menu-mobile">
                    <a href="index.html">Home</a>
                    <ul class="sub-menu">
                        <li><a href="index.html">Homepage V1</a></li>
                        <li><a href="home-02.html">Homepage V2</a></li>
                        <li><a href="home-03.html">Homepage V3</a></li>
                    </ul>
                    <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                </li>

                <li class="item-menu-mobile">
                    <a href="product.html">Shop</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="product.html">Sale</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="cart.html">Features</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="blog.html">Blog</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="about.html">About</a>
                </li>

                <li class="item-menu-mobile">
                    <a href="contact.html">Contact</a>
                </li>
            </ul>
        </nav>
    </div>
</header>
