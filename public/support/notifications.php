<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Toast Message UI</title>
    <style>
body {
  font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;
  color: #34495e;
  -webkit-font-smoothing: antialiased;
  line-height: 1.6em;
}

p {
  margin: 0;
}

.notice {
  position: relative;
  margin: 1em;
  background: #F9F9F9;
  padding: 1em 1em 1em 2em;
  border-left: 4px solid #DDD;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);
}

.notice:before {
  position: absolute;
  top: 50%;
  margin-top: -17px;
  left: -17px;
  background-color: #DDD;
  color: #FFF;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  text-align: center;
  line-height: 30px;
  font-weight: bold;
  font-family: Georgia;
  text-shadow: 1px 1px rgba(0, 0, 0, 0.5);
}

.info {
  border-color: #0074D9;
}

.info:before {
  content: "i";
  background-color: #0074D9;
}

.success {
  border-color: #2ECC40;
}

.success:before {
  content: "√";
  background-color: #2ECC40;
}

.warning {
  border-color: #FFDC00;
}

.warning:before {
  content: "!";
  background-color: #FFDC00;
}

.error {
  border-color: #FF4136;
}

.error:before {
  content: "X";
  background-color: #FF4136;
}
    </style>
</head>
<body style="width:100%!important;">
<div class="notice info"><p>This is a an info notice, it provides feedback of a neutral nature to the user.</p></div>

<div class="notice success"><p>This is a success notice, it provides feedback of a positive nature to the user.</p></div>

<div class="notice warning"><p>This is a warning notice, it provides feedback of a potentially negative nature to the user.</p></div>

<div class="notice error"><p>This is an error notice, it provides feedback of a negative nature to the user.</p></div>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.7.2/mustache.min.js'></script>

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

  <script src="js/jquery.animateNumber.min.js"></script>



</body>
</html>

