<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link
      rel="icon"
      type="image/png"
      sizes="32x32"
      href="./images/favicon-32x32.png"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
      rel="stylesheet"
    />
    <title>Book Your Slot</title>

        <link rel="stylesheet" href="./bookingslot.css" />
  </head>
  
  <style>
  
  
  body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    font-size: 1rem;
    color: white;
  }
  
  * {
    box-sizing: border-box;
  }
  
  .outer {
    width: 100vw;
    height: 100vh;
    padding: 8%;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
  }

  button {
    background-color: transparent;
    border: none;
    color: white;
    padding: 15px;
    width: 100%;
    border-radius: 5px;
    -webkit-box-shadow: 0 8px 6px -6px hsl(249, 10%, 26%);
    -moz-box-shadow: 0 8px 6px -6px hsl(249, 10%, 26%);
    box-shadow: 0 8px 6px -6px hsl(249, 10%, 26%);
    font-family: inherit;
    cursor: pointer;
  }
  
  button:focus{
      outline: none;
  }
  

  input,tr {
    border-style: none;
    border-radius: 5px;
    width: 100%;
    border: 1px solid hsl(246, 25%, 77%);
    padding: 10px 20px;
    margin-bottom: 10px;
    font-family: inherit;
    color: hsl(249, 10%, 26%);
    font-family: inherit;
  }
  
  input:focus {
    outline: none;
    border: 1px solid hsl(249, 10%, 26%);
  }
  
  .description {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  
  .desc-heading {
    font-size: 3.5vw;
    font-weight: 600;
    line-height: 1.1em;
    margin: 0;
  }
  
  .desc-body {
    line-height: 1.5em;
    letter-spacing: 1.2px;
    word-spacing: 1.5px;
  }
  
  button.blue-btn {
    background-color: hsl(248, 32%, 49%);
  }
  
  button.btn-green {
    background-color: hsl(154, 59%, 51%);
  }
  
  .form-container {
    background-color: white;
    margin-top: 20px;
    padding: 30px;
    -webkit-box-shadow: 0 8px 6px -6px hsl(249, 10%, 26%);
    -moz-box-shadow: 0 8px 6px -6px hsl(249, 10%, 26%);
    box-shadow: 0 8px 6px -6px hsl(249, 10%, 26%);
  }
  
  form > p {
    color: hsl(246, 25%, 77%);
    font-size: 12px;
    text-align: center;
  }
  
  form > p > a {
    color: hsl(0, 100%, 74%);
    cursor: pointer;
  }
  .b-r-5 {
    border-radius: 5px;
  }
  
  @media screen and (min-width: 425px) {
    .main-body {
      background-color: hsl(0, 100%, 74%);
      background-image: url("./images/bg-intro-desktop.png");
    }
    .outer > div {
      width: 50%;
      padding: 0 1vw;
    }
  }
  
  @media screen and (min-width: 1024px) {
    .desc-body {
      font-size: 13px;
    }
  }
  
  @media screen and (min-width: 768px) and (max-width: 1024px) {
    .desc-body {
      font-size: 13px;
    }
  }
  
  @media screen and (min-width: 425px) and (max-width: 768px) {
    .desc-body {
      font-size: 11px;
    }
  
    form > p ,tr{
      font-size: 11px;
    }
  }
  
  @media screen and (max-width: 425px) {
    body {
      text-align: center;
    }
    .main-body {
      background-color: hsl(0, 100%, 74%);
      background-image: url("./images/bg-intro-mobile.png");
    }
    .outer {
      height: 100%;
    }
    .outer > div {
      width: 100%;
      margin: 20px 0;
    }
    .desc-heading {
      font-size: 7vw;
      font-weight: 600;
      line-height: 1.3em;
      margin: 10px;
    }
  
    .desc-body {
      font-size: 12px;
    }
  
    form > p {
      font-size: 10px;
    }
  }
  
  
  
  </style>
  
  <body>
    <div class="main-body">
      <div class="outer">
        <div class="description">
          <p class="desc-heading">Book your slot for allowing us to collect your garbage</p>
          <p class="desc-body">
           We collect your house-hold wastes and recycle them so that they can be reused by <thead>
             public again and again. You just need to provide the details that we ask for..!!
           </thead>
          </p>
        </div>
        <div class="form">
          <div class="form-container b-r-5">
              <form method=post action="/submitorder">
                <input type="text" placeholder="First Name" name="firstname" required/>
                <input type="text" placeholder="Last Name"  name="lastname" required/>
                <input type="tel" placeholder="Phone number" name="phonenumber" required/>
                <input type="text" placeholder="Address"  name="Address" required/>
               
           		    <input type="text" placeholder="Enter Item"  name="item" required/>       
                
                
                
                
                <input type="text" placeholder="Approx Weight" name="weight"  required/>
                <input type="date" placeholder="Date when they want to book their slot"  name="date" required/>
                <input type="time" placeholder="Suitable slot time" name="time" required/>
                 <input type="submit" value="Book" > 
                
                <p>By clicking the button, you are allowing us to come to your place and collect your waste></p>
              </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
    