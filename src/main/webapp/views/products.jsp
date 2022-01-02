<html>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />



<style>






@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

.container {
  width: 100%;
  height: 100%;
  padding: 0px 8%;
}

.container h1 {
  text-align: center;
  padding-top: 10%;
  margin-bottom: 60px;
  font-weight: 600;
  position: relative;
}

.container h1::after {
  content: '';
  background: #303ef7;
  width: 100px;
  height: 5px;
  position: absolute;
  bottom: -5px;
  left: 50%;
  transform: translateX(-50%);
}

.row {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  grid-gap: 30px;
}

.service {
  text-align: center;
  padding: 25px 10px;
  border-radius: 5px;
  font-size: 14px;
  cursor: pointer;
  background: transparent;
  transition: transform 0.5s, background 0.5s;
}

.service i {
  font-size: 40px;
  margin-bottom: 10px;
  color: #303ef7;
}

.service h2 {
  font-weight: 600;
  margin-bottom: 8px;
}

.service:hover {
  background: #303ef7;
  color: #fff;
  transform: scale(1.05);
}

.service:hover i {
  color: #fff;
}

nav{
  position: fixed;
    width: 100%;
  padding: 10px 0;
  z-index: 12;
}
nav .menu{
  max-width: 1250px;
  margin: auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 20px;
}
.menu .logo a{
  text-decoration: none;
  color: rgb(17, 6, 6);
  font-size: 35px;
  font-weight: 600;
}

.menu ul{
  display: inline-flex;
}

.menu ul li{
  list-style: none;
  margin-left: 7px;
}

.menu ul li:first-child{
  margin-left: 0px;
}
.menu ul li a{
  text-decoration: none;
  color: rgb(53, 32, 32);
  font-size: 18px;
  font-weight: 500;
  padding: 8px 15px;
  border-radius: 5px;
  transition: all 0.3s ease; 
}

.menu ul li a:hover{
  background: #fff;
  color: rgb(37, 5, 5);
}

h1{
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}




</style>






















<body>
<h2 align="center"> ${message}</h2>
<nav>
  <div class="menu">
    <div class="logo">
      <h1>BinScouts</h1>
    </div>
    <ul>
      <li><a href="index">Home</a></li>
      <li><a href="login">Logout</a></li>
      <li><a href="About">About</a></li>
      <li><a href="products">Services</a></li>
      <li><a href="#">Contact</a></li>
      <li><a href="#">Feedback</a></li>
    </ul>
  </div>
</nav>
    <div class="container">
      <h1>Our Services</h1>
      <div class="row">
        <div class="service">
        <a href="book">
          <i class="fas fa-wine-bottle"></i>
          
          <h2>Plastic</h2>
          <p>
            Plastic items like bottle and regular plastic will be accepted
          </p>
          </a>
        </div>
        <div class="service">
        <a href="book">
          <i class="fas fa-key"></i>
          <h2>Iron and Metal</h2>
          <p>
            Items like Iron rods and Metals like thing are accepted
          </p>
          </a>
        </div>
        
        
        <div class="service">
        <a href="book">
          <i class="fab fa-sketch"></i>
          <h2>cloth</h2>
          <p>
            Damaged cloths and used cloths are accepted
          </p>
          </a>
        </div>
        <div class="service">
        <a href="book">
          <i class="fas fa-database"></i>
          <h2>Bottle</h2>
          <p>
            All type od bottles are accepted
          </p>
          </a>
        </div>
        <div class="service">
        <a href="book">
          <i class="fas fa-mobile-alt"></i>
          <h2>Paper</h2>
          <p>
           	Items like Daily News Paper, used paper and old books, text books are accepted
          </p>
          </a>
        </div>
        <div class="service">
        <a href="book">
          <i class="fas fa-file-invoice"></i>
          <h2>Glass</h2>
          <p>
            All glass items are accepted except mirror glass.
          </p>
          </a>
        </div>
        <div class="service">
        <a href="book">
          <i class="fas fa-money-check-alt"></i>
          <h2>CartBoard</h2>
          <p>
            Cartboard of type large and small are accepted in huge quantity
          </p>
          </a>
        </div>
        <div class="service">
        <a href="book">
          <i class="fas fa-network-wired"></i>
          <h2>Rubber</h2>
          <p>
            Items which has rubber are accepted
          </p>
          <a href="book">
        </div>
      </div>
    </div>
  </body>
</html>