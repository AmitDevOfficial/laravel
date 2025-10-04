<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  </head>
  <body>
<div class="container">
    <form action="login" method="post">
        @csrf
        <div class="row d-block">
        <h1 class="text-center">Login</h1>
            <div class="col-3">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" placeholder="username">
                    <span class="text-danger">
                        @error('username')
                            {{$message}}
                        @enderror
                    </span>
            </div>
            <div class="col-3">
                <label>Password</label>
                <input type="password" name="password" class="form-control" placeholder="password">
                    <span class="text-danger">
                        @error('password')
                            {{$message}}
                        @enderror
                    </span>
            </div>
            <div class="col-3 my-3">
                <input type="submit" class="btn btn-primary">
            </div>
                    
        </div>
    </form>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>