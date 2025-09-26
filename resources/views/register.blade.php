<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  </head>
  <body>
    <h1>Register</h1>

   <div class="container">
            
            {{-- This is for testing our validation is visible or not
            @php
               print_r($errors->all());
            @endphp --}}

            {{-- <form action="{{url('/register')}}" method="post">
                @csrf
                <div class="row d-block">
                    <div class="col-md-3">
                        <label for="">Name</label>
                        <input type="text" name="fullName" value="{{old('fullName')}}" class="form-control" >
                        <span class="text-danger">
                            @error('fullName')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Email</label>
                        <input type="email" name="email" value="{{old('email')}}" class="form-control">
                        <span class="text-danger">
                            @error('email')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Password</label>
                        <input type="text" name="emppass" value="{{old('emppass')}}" class="form-control" >
                        <span class="text-danger">
                            @error('emppass')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Mobile No :</label>
                        <input type="text" name="mobile" value="{{old('mobile')}}" class="form-control" >
                        <span class="text-danger">
                            @error('mobile')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3 my-3">
                        <input type="submit" value="Register" class="form-control bg-success text-white" >
                    </div>
                </div>
            </form> --}}
            
            <form action="{{url('/register')}}" method="post">
                @csrf
                <div class="row d-block">
                    <div class="col-md-3">
                        <label for="">Name</label>
                        <input type="text" name="fullName" value="{{old('fullName')}}" class="form-control" >
                        <span class="text-danger">
                            @error('fullName')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Email</label>
                        <input type="email" name="email" value="{{old('email')}}" class="form-control">
                        <span class="text-danger">
                            @error('email')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Address</label>
                        <input type="text" name="address" value="{{old('address')}}" class="form-control" >
                        <span class="text-danger">
                            @error('address')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Date of Join</label>
                        <input type="date" name="doj" value="{{old('doj')}}" class="form-control" >
                        <span class="text-danger">
                            @error('doj')
                                {{$message}}                            
                            @enderror
                        </span>
                    </div>
                    <div class="col-md-3">
                        <label for="">Gender</label>
                        <input type="radio" name="gender" value="M" >Male
                        <input type="radio" name="gender" value="F" >Female
                        <input type="radio" name="gender" value="O" >Others
                        
                    </div>
                    <div class="col-md-3 my-3">
                        <input type="submit" value="Register" class="form-control bg-success text-white" >
                    </div>
                </div>
            </form>
   </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>