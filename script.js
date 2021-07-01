$("document").ready(function(){
    /*Inizialmente la seconda pagina non è visibile*/
    /*Inizialmente i div contenenti le abbreviazioni e le traduzioni, le glosse non sono visibili*/
    $("#secondaPagina").css("display", "none");
    $("#button2").css("display", "none");
    $(".traduzione").css("display", "none");
    $(".note").css("display", "none");
    $(".gloss").css("display", "none");
    $("#imginfo2").css("display", "none");
    /* Inizializzo l'effetto zoom*/
    imageZoom("pag17", "myresult");
    /*Il mouseover su un div permette la visualizzazione delle abbreviazioni e della traduzione corrispondente*/
	$("#pericope1").mouseover(function(){
		$("#pericope1").css("font-weight", "bold");
        $("#pericope1").css("cursor", "pointer");
        $("#tr1").css("display", "block"); 
        $("#tr1").css("top", "58%");
        $('div[name="pericope1"]').css("top", "76%");    
        $('div[name="pericope1"]').css("display", "block");
    });
    $("#pericope2").mouseover(function(){
		$("#pericope2").css("font-weight", "bold");
        $("#pericope2").css("cursor", "pointer");
        $("#tr2").css("display", "block");
        $("#tr2").css("top", "70%");
        $('div[name="pericope2"]').css("top", "83%");
        $('div[name="pericope2"]').css("display", "block");
	});
    $("#pericope3").mouseover(function(){
		$("#pericope3").css("font-weight", "bold");
        $("#pericope3").css("cursor", "pointer");
        $("#tr3").css("display", "block"); 
        $("#tr3").css("top", "80%");    
	});
    $("#pericope4").mouseover(function(){
		$("#pericope4").css("font-weight", "bold");
        $("#pericope4").css("cursor", "pointer");
        $("#tr4").css("display", "block"); 
        $("#tr4").css("top", "95%");   
	});    
    $("#pericope5").mouseover(function(){
		$("#pericope5").css("font-weight", "bold");
        $("#pericope5").css("cursor", "pointer");
        $("#tr5").css("display", "block"); 
        $("#tr5").css("top", "94%"); 
        $('div[name="pericope5"]').css("top", "125%");
        $('div[name="pericope5"]').css("display", "block");   
        $("#tr5").css("margin-left", "8%"); 
        $('div[name="pericope5"]').css("margin-left", "8%"); 
	});    
    $("#pericope6").mouseover(function(){
		$("#pericope6").css("font-weight", "bold");
        $("#pericope6").css("cursor", "pointer");
        $("#tr6").css("display", "block"); 
        $("#tr6").css("top", "128%");  
        $('div[name="pericope6"]').css("top", "145%"); 
        $('div[name="pericope6"]').css("display", "block");
	});
    $("#primaParte").mouseover(function(){
		$("#primaParte").css("font-weight", "bold");
        $("#primaParte").css("cursor", "pointer");
        $("#tr71").css("display", "block"); 
        $("#tr71").css("top", "140%");  
	});
    $("#secondaParte").mouseover(function(){
		$("#secondaParte").css("font-weight", "bold");
        $("#secondaParte").css("cursor", "pointer");
        $("#tr72").css("display", "block"); 
        $("#tr72").css("top", "58%");
        $('div[name="secondaParte"]').css("top", "73%");   
        $('div[name="secondaParte"]').css("display", "block");  
	});    
    $("#pericope8").mouseover(function(){
		$("#pericope8").css("font-weight", "bold");
        $("#pericope8").css("cursor", "pointer");
        $("#tr8").css("display", "block"); 
        $("#tr8").css("top", "63%");  
        $('div[name="pericope8"]').css("top", "90%"); 
        $('div[name="pericope8"]').css("display", "block"); 
        $("#tr8").css("margin-left", "4%"); 
        $('div[name="pericope8"]').css("margin-left", "4%");  
	});    
    $("#pericope9").mouseover(function(){
		$("#pericope9").css("font-weight", "bold");
        $("#pericope9").css("cursor", "pointer");
        $("#tr9").css("display", "block"); 
        $("#tr9").css("top", "89%");  
	});
    $("#pericope10").mouseover(function(){
		$("#pericope10").css("font-weight", "bold");
        $("#pericope10").css("cursor", "pointer");
        $("#tr10").css("display", "block"); 
        $("#tr10").css("top", "100%"); 
        $("#tr10").css("margin-left", "7%");  
	});
    $("#pericope11").mouseover(function(){
		$("#pericope11").css("font-weight", "bold");
        $("#pericope11").css("cursor", "pointer");
        $("#tr11").css("display", "block"); 
        $("#tr11").css("top", "118%"); 
        $('div[name="pericope11"]').css("top", "133%");
        $('div[name="pericope11"]').css("display", "block");   
	});
    //Il mouseout da un div rende nuovamente nascoste le abbreviazioni e la traduzione 
    $("#pericope1").mouseout(function(){
        $("#pericope1").css("font-weight", "normal");
        $("#tr1").css("display", "none"); 
        $('div[name="pericope1"]').css("display", "none"); 
    });
    $("#pericope2").mouseout(function(){
        $("#pericope2").css("font-weight", "normal");
        $("#tr2").css("display", "none"); 
        $('div[name="pericope2"]').css("display", "none"); 
    });
    $("#pericope3").mouseout(function(){
        $("#pericope3").css("font-weight", "normal");
        $("#tr3").css("display", "none"); 
        $('div[name="pericope3"]').css("display", "none"); 
    });
    $("#pericope4").mouseout(function(){
        $("#pericope4").css("font-weight", "normal");
        $("#tr4").css("display", "none"); 
        $('div[name="pericope4"]').css("display", "none"); 
    });
    $("#pericope5").mouseout(function(){
        $("#pericope5").css("font-weight", "normal");
        $("#tr5").css("display", "none"); 
        $('div[name="pericope5"]').css("display", "none"); 
    });
    $("#pericope6").mouseout(function(){
        $("#pericope6").css("font-weight", "normal");
        $("#tr6").css("display", "none"); 
        $('div[name="pericope6"]').css("display", "none"); 
    });
    $("#primaParte").mouseout(function(){
        $("#primaParte").css("font-weight", "normal");
        $("#tr71").css("display", "none"); 
        $('div[name="primaParte"]').css("display", "none"); 
    });
    $("#secondaParte").mouseout(function(){
        $("#secondaParte").css("font-weight", "normal");
        $("#tr72").css("display", "none"); 
        $('div[name="secondaParte"]').css("display", "none"); 
    });
    $("#pericope8").mouseout(function(){
        $("#pericope8").css("font-weight", "normal");
        $("#tr8").css("display", "none");
        $('div[name="pericope8"]').css("display", "none");  
    });
    $("#pericope9").mouseout(function(){
        $("#pericope9").css("font-weight", "normal");
        $("#tr9").css("display", "none"); 
        $('div[name="pericope9"]').css("display", "none"); 
    });
    $("#pericope10").mouseout(function(){
        $("#pericope10").css("font-weight", "normal");
        $("#tr10").css("display", "none"); 
        $('div[name="pericope10"]').css("display", "none"); 
    });
    $("#pericope11").mouseout(function(){
        $("#pericope11").css("font-weight", "normal");
        $("#tr11").css("display", "none"); 
        $('div[name="pericope11"]').css("display", "none"); 
    });
    //Click sul pulsante avanti / indietro per rendere visibile solo una delle due pagine
    $("#button").click(function(){
		$("#secondaPagina").css("display", "block");
        /* Inizializzo l'effetto zoom*/
        imageZoom("pag18", "myresult2");
        $("#primaPagina").css("display", "none");
        $("#button2").css("display", "block");
        $("#button").css("display", "none");
	});
    $("#button2").click(function(){
		$("#secondaPagina").css("display", "none");
        $("#primaPagina").css("display", "block");
        $("#button2").css("display", "none");
        $("#button").css("display", "block");
	});
    //Monstrare e non mostrare le glosse
    $("#imginfo").click(function(){
        $(".gloss").css("display", "block");
        $("#imginfo").css("display","none");
        $("#imginfo2").css("display","block");
    });
    $("#imginfo2").click(function(){
        $(".gloss").css("display", "none");
        $("#imginfo").css("display","block");
        $("#imginfo2").css("display","none");
    });

});

/*Funzione per lo zoom (presa da internet)*/
function imageZoom(imgID, resultID) {
    var img, lens, result, cx, cy;
    img = document.getElementById(imgID);
    result = document.getElementById(resultID);
    /*create lens:*/
    lens = document.createElement("DIV");
    lens.setAttribute("class", "zoom-lens");
    /*insert lens:*/
    img.parentElement.insertBefore(lens, img);
    /*calculate the ratio between result DIV and lens:*/
    cx = result.offsetWidth / lens.offsetWidth;
    cy = result.offsetHeight / lens.offsetHeight;
    /*set background properties for the result DIV:*/
    result.style.backgroundImage = "url('" + img.src + "')";
    result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
    /*execute a function when someone moves the cursor over the image, or the lens:*/
    lens.addEventListener("mousemove", moveLens);
    img.addEventListener("mousemove", moveLens);
    /*and also for touch screens:*/
    lens.addEventListener("touchmove", moveLens);
    img.addEventListener("touchmove", moveLens);
    function moveLens(e) {
      var pos, x, y;
      /*prevent any other actions that may occur when moving over the image:*/
      e.preventDefault();
      /*get the cursor's x and y positions:*/
      pos = getCursorPos(e);
      /*calculate the position of the lens:*/
      x = pos.x - (lens.offsetWidth / 2);
      y = pos.y - (lens.offsetHeight / 2);
      /*prevent the lens from being positioned outside the image:*/
      if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
      if (x < 0) {x = 0;}
      if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
      if (y < 0) {y = 0;}
      /*set the position of the lens:*/
      lens.style.left = x + "px";
      lens.style.top = y + "px";
      /*display what the lens "sees":*/
      result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
    }
    function getCursorPos(e) {
      var a, x = 0, y = 0;
      e = e || window.event;
      /*get the x and y positions of the image:*/
      a = img.getBoundingClientRect();
      /*calculate the cursor's x and y coordinates, relative to the image:*/
      x = e.pageX - a.left;
      y = e.pageY - a.top;
      /*consider any page scrolling:*/
      x = x - window.pageXOffset;
      y = y - window.pageYOffset;
      return {x : x, y : y};
    }
  }