<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Resubale - Component Form</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

@php
    $var="Hello Laravel"
@endphp
<form action="">
   <div class="container">
     <div class="row mt-5">
        <div class="col-3">
                <x-input type='text' name="fullName" placeholder="Enter Your Name" label="Full Name" :var='$var'/>  {{--This is calling from components--}}
        </div>

        <div class="col-3">
                <x-input type='email' name="email" placeholder="Enter Your Email" label="Email"/>  {{--This is calling from components--}}
        </div>

        <div class="col-3">
                <x-input type='password' name="password" placeholder="Enter Your Password" label="Password"/>  {{--This is calling from components--}}
        </div>
    </div>
   </div>
</form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>