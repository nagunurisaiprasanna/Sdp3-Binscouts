<!DOCTYPE html>
<html>
<head>
  <title>Contact us</title>
  <link rel="stylesheet" type="text/css" href="contact.css">
  <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
</head>


<style>



*{
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: 'Quicksand', sans-serif;
}

body{
  height: 100vh;
  width: 100%;
}

.container{
  position: relative;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px 100px;
}

.container:after{
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  background: url("bg.jpg") no-repeat center;
  background-size: cover;
  filter: blur(50px);
  z-index: -1;
}
.contact-box{
  max-width: 850px;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  justify-content: center;
  align-items: center;
  text-align: center;
  background-color: #fff;
  box-shadow: 0px 0px 19px 5px rgba(0,0,0,0.19);
}

.left{
  background: url("https://cdn.pixabay.com/photo/2017/12/02/14/38/contact-us-2993000__480.jpg") no-repeat center;
  background-size: cover;
  height: 100%;
}

.right{
  padding: 25px 40px;
}

h2{
  position: relative;
  padding: 0 0 10px;
  margin-bottom: 10px;
}

h2:after{
  content: '';
    position: absolute;
    left: 50%;
    bottom: 0;
    transform: translateX(-50%);
    height: 4px;
    width: 50px;
    border-radius: 2px;
    background-color: #2ecc71;
}

.field{
  width: 100%;
  border: 2px solid rgba(0, 0, 0, 0);
  outline: none;
  background-color: rgba(230, 230, 230, 0.6);
  padding: 0.5rem 1rem;
  font-size: 1.1rem;
  margin-bottom: 22px;
  transition: .3s;
}

.field:hover{
  background-color: rgba(0, 0, 0, 0.1);
}

textarea{
  min-height: 150px;
}

.btn{
  width: 100%;
  padding: 0.5rem 1rem;
  background-color: #2ecc71;
  color: #fff;
  font-size: 1.1rem;
  border: none;
  outline: none;
  cursor: pointer;
  transition: .3s;
}

.btn:hover{
    background-color: #27ae60;
}

.field:focus{
    border: 2px solid rgba(30,85,250,0.47);
    background-color: #fff;
}

@media screen and (max-width: 880px){
  .contact-box{
    grid-template-columns: 1fr;
  }
  .left{
    height: 200px;
  }
}



</style>
<body>

<jsp:include page="base.jsp"></jsp:include><br/><br/>
  <div class="container">
    <div class="contact-box">
      <div class="left"></div>
      <div class="right">
        <form action="javascript:sendmail()" method="post">
        <h2>Contact Us</h2>
        <input type="text" class="field" placeholder="Your Name">
        <input type="text" class="field" placeholder="Your Email">
        <input type="text" class="field" placeholder="Phone">
        <textarea placeholder="Message" class="field"></textarea>
        <button class="btn">Send</button>
      </div>
    </div>
  </div>
  <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.663145865659!2d80.62040591468933!3d16.441925688651626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f0a2a7d81943%3A0x8ba5d78f65df94b8!2sK%20L%20University!5e0!3m2!1sen!2sin!4v1640254805357!5m2!1sen!2sin" width="1500" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>
  <script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
<script src="https://smtpjs.com/v3/smtp.js"></script>
 
<script>  

     function sendmail(){
    
      var name = $('#Name').val();
      var email = $('#Sender').val();
      var subject = $('#Subject').val();
      var message = $('#Message').val();

      // var body = $('#body').val();

      var Body='Name: '+name+'<br>Email: '+email+'<br>Subject: '+subject+'<br>Message: '+message;
      //console.log(name, phone, email, message);

      Email.send({
        SecureToken:"fbf31702-bb7f-4a4e-9c1c-4ccf17ee777f",
        To: 'pravalikathadakamalla@gmail.com',
        From: "prava9602@gmail.com",
        Subject: "New message on contact from "+name,
        Body: Body
      }).then(
        message =>{
          //console.log (message);
          if(message=='OK'){
          alert('Your mail has been send. Thank you for connecting.');
          }
          else{
            console.error (message);
            alert('There is error at sending message. ')
            
          }

        }
      );



    }


    </script>
 </script>

</body>

</html>