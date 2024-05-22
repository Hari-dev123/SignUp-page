<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="style.css">
<title>Modern Signup | Login page</title>
</head>
<body>

        <div class="container" id="container">

        <!-- sign up -->
        <div class="form-container sign-up">
            <form action="signup" method="post" >
                <h1>Create Account</h1>
                <input type="text"  name = "username" placeholder="Name">
                <input type="password" name = "password" placeholder="Password">
                <button type="submit">Sign Up</button>
            </form>
        </div>

        <!-- signin -->
        <div class="form-container sign-in">
            <form action="signin" method="post">
                <h1>Sign In</h1>
                <input type="text" name="username" placeholder="Name">
                <input type="password" name = "password" placeholder="Password">
                <button type="submit">Sign In</button>
            </form>
        </div>

        <!-- toggle change -->
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome Back!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hello, Friend!</h1>
                    <p>Register with your personal details to use all of site features</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

    <script src="script.js"></script>










<!--          <h1>Signup</h1>
      <form action = "signup" method="post"  style="display:inline;">
            <input type="text" name = "username" placeholder="Username" required="required"> <br>
            <input type="password" name = "password" placeholder="password" required="required"> <br> 
            <input type="submit">          
      </form>
       <form action="login.jsp" style="display: inline;">
             <input type= "submit" value = "Signin">
       </form> -->
</body>
</html>