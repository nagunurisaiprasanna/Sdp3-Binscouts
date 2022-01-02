<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,intial-scale=1.0">
    <title>Feedback</title>
    <link rel="stylesheet" href="style.css">
</head>

<style>

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'poppins', sans-serif;
}
.container{
    width: 100%;
    height: 100vh;
    background:gray;
    display: flex;
    align-items: center;
    justify-content: center;
}
form{
    background: #fff;
    display: flex;
    flex-direction: column;
    padding: 2vw 4vw;
    width: 90%;
    max-width: 600px;
    border-radius: 10px;
}
form h3{
    color: #555;
    font-weight: 800;
    margin-bottom: 20px;
}
form input,form textarea{
    border: 0;
    margin: 10px 0;
    padding: 20px;
    outline: none;
    background: #f5f5f5;
    font-size: 16px;
}
form button{
    padding: 15px;
    background: #ff5361;
    color: #fff;
    font-size: 18px;
    border: 0;
    outline: none;
    cursor: pointer;
    width: 150px;
    margin: 20px auto 0;
    border-radius: 30px;

}



</style>
<body>
<jsp:include page="base.jsp"></jsp:include><br/><br/>
    <div class="container">
        <form onsubmit="sendEmail(); reset(); return false;">
            <h3>Send Your Feedback</h3>
            <input type="text" id="name" placeholder="your Name" required>
            <input type="email" id="email" placeholder="Email id" required>
            <input type="text" id="phone" placeholder="phono no." required>
            <textarea id="message" rows="4" placeholder="Provide your feedback"></textarea> 
            <button type="submit">send</button>
                </form>

    </div>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script>
        function sendEmail()
        {
            Email.send({
                Host : "smtp.gmail.com",
                Username : "prava9602@gmail.com",
                Password : "12345678",
                To : 'pravalikathadakamalla@gmail.com',
                From : document.getElementById("email").value,
                Subject : "New Contact Form Enquiry",
                Body : "Name: " +document.getElementById("name").value
                    + "<br> Email: " +document.getElementById("email").value
                    + "<br> phone no: " +document.getElementById("phone").value
                    + "<br> Message: " +document.getElementById("message").value

             }).then(
             message => alert("Message sent Succesfully")
             );
        }
    </script>
    <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.663145865659!2d80.62040591468933!3d16.441925688651626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f0a2a7d81943%3A0x8ba5d78f65df94b8!2sK%20L%20University!5e0!3m2!1sen!2sin!4v1640254805357!5m2!1sen!2sin" width="1500" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>
</body>
</html>