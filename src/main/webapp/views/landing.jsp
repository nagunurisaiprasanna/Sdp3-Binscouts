<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<style>

@import url('https://fonts.googleapis.com/css2?family=Mulish:wght@200&display=swap');


/* this is non resposive , please adjust for smaller screens before using*/



*{
    padding: 0;
    margin: 0;
    font-family: 'Mulish', sans-serif;
    
}



.container{
    display: flex;
    background: turquoise;
    width: 100vw;
    height:100vh ;
    overflow: hidden;

    
}

.span1{
    /* border: rgb(149, 101, 228) solid 2px; */
    width: 200px;
    height: 200px;
    position: fixed;
    border-radius: 50%;
    transform: rotate(30deg) scale(1.5);
    box-shadow: inset 10px 10px 10px rgba(0,0,0, 0.1),
    15px 20px 20px rgba(0,0,0, 0.5),
    inset -25px -20px 20px rgba(255, 255, 255, 0.3);
      animation:anim 20s ease infinite;
    
    ;



}

.span2{
    /* border: solid black 2px; */
    height: 100px;
    width: 200px;
    text-align: center;
    font-size: 12vh;
    color: rgb(193, 193, 218);
    justify-content: center;
    transform:translateX(300px) translateY(180px);
    letter-spacing: 10px;
  position:absolute;
    
    
}
.span2 .medtext{
    font-weight: 100;
    text-shadow: 5px 5px 20px rgba(19, 133, 179, 0.5),
    -10px 10px 20px rgba(255, 255, 255, 0.5);
  z-index:10;
    
}

.span2 .large{
    font-size: 30vh;
    font-weight: 200;
    text-shadow: 10px 10px 20px rgba(19, 133, 179, 0.5),
    -20px 20px 30px rgba(255, 255, 255, 0.5);
}

.span3{
  position:absolute;
  bottom:10px;
  right:20px;
  
    
    height: 120px;
    justify-content: center;


}

.span4{
    transform: translateY(80px) rotate(90deg) translateX(300px);
    /* border: solid red 2px; */
    height: 50px;
    justify-content: center;
  position:absolute;
    

}
.span4 h2{
    font-size: 80px;
    font-weight: 10;
    padding-bottom: 10px;
    color: rgb(86, 86, 206);
    text-shadow: 5px 5px 20px rgba(19, 133, 179, 0.5),
    -10px 10px 10px rgba(255, 255, 255, 0.5);
  

}

.span3 h2{
    color: rgb(86, 86, 206);
    
}

.overflow{
    position: absolute;
    width: 85vh;
    height: 85vh;
    
    background: rgba(117, 117, 224, 0.726);
    z-index: 5;
    top: 10vh;
    left: 5vh;
    border-radius: 50%;
    animation: animate 5s ease infinite;
    box-shadow: inset 10px -10px 30px rgba(0,0,0, 0.2),
    15px -20px 30px rgba(255, 255, 255, 0.5),
    inset -25px -20px 30px rgba(0, 0, 0, 0.3),-20px 20px 30px       rgba(255, 255, 255, 0.37);
  
    
    display: flex;
    align-items: center;
    justify-content: center;
}
@keyframes animate{
    0%{
        transform: scale(0);
    }
    40%{


        transform: scale(1.2);
    
    }
    60%{
        transform: scale(1.2);
        

    }


    100%{
        transform: scale(0);
    }

}

.hero{
    color: rgb(49, 69, 185);
    font-size: 9vh;
    font-weight: 100;
    letter-spacing: 10px;
    
}

.span5{
    width: 70vh;
    height: 70vh;
    position: absolute;
    right: 0;
    border-bottom-left-radius: 100%;
    border-top-width: 0px;
    border-right-width: 0px;
    box-shadow: inset 10px 10px 10px rgba(0,0,0, 0.1),
    15px 20px 20px rgba(0,0,0, 0.5),
    inset -25px -20px 20px rgba(255, 255, 255, 0.3);
    position: absolute;
    animation:anim 18s ease infinite;
    


}

.span6
{
    width: 10vw;
    height: 10vw;
    position: absolute;
    left: 40vw;
    top: 20vh;
    border-radius: 50%;
    box-shadow: inset 10px 10px 10px rgba(0,0,0, 0.1),
    15px 20px 20px rgba(0,0,0, 0.5),
    inset -25px -20px 20px rgba(255, 255, 255, 0.3);
    animation:anim 17s ease infinite;
}

  
.span7{
    width: 6vw;
    height: 6vw;
    position: absolute;
    left: 80vw;
    top: 80vh;
    border-radius: 50%;
    box-shadow: inset 10px 10px 10px rgba(0,0,0, 0.1),
    15px 20px 20px rgba(0,0,0, 0.5),
    inset -25px -20px 20px rgba(255, 255, 255, 0.3);
    

}
body{
  height:100%;
  background: turquoise;
}
.span3 h2{
  font-size:50px;
  bottom: 10px;
  font-weight:100;
}

.span7{
  animation:anim 10s ease infinite;
}

@Keyframes anim{
  50%{
    transform:translateX(50px) scale(1.3) translateY(5px);
  }
}















</style>

<body> 
<a align="center" href="home">Home</a>
  <div class="container">
        <div class="span1">
    
        </div>
        <div class="span2">
            <h2 class="medtext">
                Implement Today
            </h2>

            <h2 class="large">
                Habituate Tmr
            </h2>


        </div>
        <div class="span3">
            <h2>today</h2>
        </div>
        <div class="span4">
            <h2>
                Welcome
            </h2>
        </div>

        <div class="span5">
            

        </div>
        <div class="span6">
            

        </div>
        <div class="span7">
 
        </div>
   

    </div>

    <div class="overflow">
        <h1 class="hero">
            BinScouts
        </h1>

    </div>

</body>
